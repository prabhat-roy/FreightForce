# AI_PLAN.md — FreightForce (Logistics & Supply-Chain Platform)

> Hierarchical AI/ML strategy. Reuses the Paperclip / OpenClaw / NemoClaw
> agent platform first defined in [ShopOS/AI.md](../ShopOS/AI.md). This file
> is the FreightForce-specific specialisation.

---

## 1. Why AI in FreightForce

Logistics is an optimisation + prediction problem stack: routes, ETAs,
loads, yards, customs windows, cargo theft. AI is critical because:

- A single re-routing across thousands of vehicles per day is a hard OR
  problem solved better by ML-warm-started solvers.
- Customs documentation is multilingual + scanned + form-heavy — only
  doc-AI scales.
- Cargo-theft / pilferage detection from CCTV at yards/ports.
- ETA accuracy compounds: every 1% improvement reduces dwell time
  meaningfully across the entire chain.

---

## 2. Domain-Specific AI/ML Use Cases

| # | Use case | Domain | Model class | Latency budget |
|---|----------|--------|-------------|----------------|
| 1 | Route optimisation (multi-vehicle, multi-stop, time-window) | tms, planning | OR-Tools VRP + LightGBM travel-time priors | <60 s/replan |
| 2 | ETA prediction (live) | tms, customer-portal | XGBoost on telematics + Graph-attention on road network | <300 ms |
| 3 | Demand forecasting (lane / corridor) | scm, planning | Temporal Fusion Transformer + holiday calendars | nightly |
| 4 | Load matching (carrier ↔ shipper) | freight-broker | Embedding match + LightGBM ranker | <500 ms |
| 5 | Cargo theft / yard intrusion detection (CCTV) | security, yard | YOLOv9 + pose + temporal anomaly | <100 ms on edge |
| 6 | Fuel optimisation (driver coaching) | fleet | RL on telematics, advisory only | streaming |
| 7 | Customs document AI (HBL, MAWB, packing list, CO) | trade, customs | Donut + LayoutLMv3 + Llama 3.1 RAG over HS codes | <3 s/doc |
| 8 | Damage / cargo condition CV (loading bay) | quality, claims | Anomalib + custom CV scorer | <80 ms on edge |
| 9 | Driver fatigue / distraction (in-cab cam) | safety | YOLO + head-pose + temporal | <50 ms on edge |
| 10 | Voice-driven dispatcher assistant | tms | Whisper + Llama 3.1 70B + tool-calling | <1.5 s |
| 11 | Yard / port congestion forecast | wms, ports | Spatio-temporal GNN | hourly |
| 12 | Freight-rate prediction | finance, brokerage | LightGBM + transformer on macro signals | daily |

---

## 3. Hierarchical Agent Architecture

Reuses **OpenClaw** / **Paperclip** / **NemoClaw** from `ShopOS/AI.md`.

### Tier 0 — Master Architect Agent

`freight-architect` — researches AI tooling, proposes services, on-boards
Tier-1 leads, weekly written report. Read-only on prod.

### Tier 1 — Division Leads (5)

| Agent | Scope |
|-------|-------|
| `freight-dev-lead`        | Backend/frontend service code |
| `freight-devops-lead`     | Helm, GitOps, infra, CI |
| `freight-devsecops-lead`  | OPA, Vault, Cilium, Falco |
| `freight-dataml-lead`     | Feature store, training, drift, edge models |
| `freight-platform-lead`   | Cross-cutting (idempotency, saga, outbox), edge runtime |

### Tier 2 — Specialist Agents

**By language**: Go, Java, Kotlin, Python, Node, Rust, TypeScript.

**By tool**: PostgreSQL/PostGIS, MongoDB, Redis, TimescaleDB, Cassandra,
ClickHouse, Kafka, NATS, RabbitMQ, MQTT, Vault, Keycloak, OPA, Kyverno,
Falco, Cilium, Istio, ArgoCD, Argo Workflows, Prometheus, Grafana, Loki,
Jaeger, OpenTelemetry, MinIO, Trivy, Cosign, GeoServer, MapLibre,
Valhalla / OSRM (routing), Open Trip Planner, OpenLR, OpenFGA, Wazuh,
Camunda, Druid, Pulsar, KubeEdge.

**By service** — one agent per microservice (~180). Owns README,
OpenAPI, tests, CHANGELOG, deps, /healthz.

### Tier 3 — Ephemeral Workers

Spawned for retraining ETA model after corridor shift, generating customs
runbooks, building edge bundles for new yard cameras.

### Lifecycle

Research → Document → Implement → Test → Review → Deploy → Monitor →
Respond → Upgrade → Report. Weekly markdown report in `ai/reports/`.

---

## 4. Separate AI Infrastructure

```
ai-platform/
├── cluster: freight-ai-{aws,gcp,azure}    ← cloud GPU pool
├── cluster: freight-ai-edge               ← yard/port Jetson Orin nodes
├── namespace: freight-ai-control           ← Paperclip
├── namespace: freight-ai-agents            ← OpenClaw runtime
├── namespace: freight-ai-sandbox           ← NemoClaw
├── namespace: freight-ai-models            ← vLLM, Ollama, LiteLLM, Triton
├── namespace: freight-ai-data              ← Qdrant, Weaviate, MinIO, MLflow
├── namespace: freight-ai-obs               ← Langfuse, Phoenix
└── namespace: freight-ai-pipelines         ← Argo Workflows
```

### Hardware

- **Cloud**: A100 for retraining; A10G/L4 for LLM inference.
- **Edge** (per yard/port): Jetson Orin running TensorRT for CCTV CV.
- In-cab edge: ARM SoC running quantised TFLite models for fatigue.

### Software stack

| Layer | Tool | Purpose |
|-------|------|---------|
| Cloud inference | vLLM, Triton | LLM + vision |
| Edge inference | TensorRT, ONNX Runtime, TFLite | Yard cam, in-cab |
| Routing | OSRM / Valhalla | Travel-time, ETA priors |
| Local dev | Ollama | Offline |
| Gateway | LiteLLM | OpenAI-compatible, quota |
| Orchestrator | **Paperclip** | Task queue, audit |
| Agent platform | **OpenClaw** | Llama 3.1 70B |
| Sandbox | **NemoClaw** | NeMo Guardrails |
| Vector | Qdrant | Customs doc + HS-code RAG |
| Vector | Weaviate | Multimodal cargo image+text |
| MLOps | MLflow | Model registry |
| Workflows | Argo Workflows | Retraining, eval, edge bundles |
| Feature store | Feast | Telematics, lane, weather features |
| Drift | Evidently | Feature drift, ETA error tracking |
| LLM obs | Langfuse + Phoenix | Trace, cost, eval |

### Data isolation

- Per-region (EU, US, IN, ME, SEA) AI data planes — Cilium netpol enforced.
- Customer cargo manifests encrypted at rest (Vault Transit).
- Telematics in TimescaleDB; 13 months online, 7 years cold (MinIO).

---

## 5. Compliance & Guardrails

| Control | Mechanism |
|---------|-----------|
| GDPR / CCPA | PII tokenisation; right-to-erasure in Paperclip |
| Customs trade rules (HS, INCOTERMS) | Doc-AI outputs always reviewed against rule engine; never auto-files |
| Driver-data privacy | In-cab footage is local-first; cloud only on incident |
| Hours-of-Service / FMCSA / EU AETR | AI scheduling cannot violate HoS — hard rule constraints |
| C-TPAT / AEO / PIP cargo security | Yard CV alerts route to human ops, never auto-act |

---

## 6. Implementation Roadmap

| Month | Milestone |
|-------|-----------|
| 1 | `freight-ai-*` cloud cluster up; vLLM serving Llama 3.1 70B |
| 2 | Paperclip + NemoClaw; Tier-0 architect live |
| 3 | Tier-1 leads; ETA model v0 in shadow |
| 4 | Per-language / per-tool Tier-2 agents |
| 5 | Per-service Tier-2 agents (tms → wms → tracking first) |
| 6 | ETA v1 prod; customs doc-AI prod for HBL/MAWB |
| 7 | Yard CV pilot at 2 sites; route optimisation v1 |
| 8 | Multi-region rollout, multi-cloud failover drill |

---

## 7. Cost Envelope (target)

- **Cloud infra**: $4,000 – $6,500 / month per primary cloud
- **Edge yard node**: $1,500 one-time + $40/month ops
- **No** subscription LLM spend

---

## 8. Cross-References

- Master AI strategy: [ShopOS/AI.md](../ShopOS/AI.md)
- Same Paperclip/OpenClaw/NemoClaw platform across all 15 sibling projects.
