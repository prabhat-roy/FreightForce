# FreightForce — Enterprise Logistics & Supply Chain Platform

Enterprise-grade, cloud-native logistics and supply chain management platform built on open source
technologies. Covers end-to-end supply chain operations — procurement, warehousing, transportation,
last-mile delivery, fleet management, cold chain, customs & trade compliance, and supply chain
visibility — designed for 3PL providers, freight forwarders, manufacturing companies, and retail
distribution networks.

---

## Overview

| Attribute         | Value                                                           |
|-------------------|-----------------------------------------------------------------|
| Type              | 3PL · TMS · WMS · Fleet Management · Supply Chain Visibility    |
| Domains           | 16 business domains                                             |
| Services          | 185+ microservices                                              |
| Languages         | Go, Java, Kotlin, Python, Rust, Node.js, Scala                  |
| Standards         | EDI X12, EDIFACT, UN/LOCODE, GS1, IATA, IMO FAL                |
| Databases         | PostgreSQL, MongoDB, Redis, Cassandra, TimescaleDB, Neo4j       |
| Message Broker    | Apache Kafka, NATS JetStream, RabbitMQ                          |
| Cloud             | AWS (primary), GCP                                              |
| Orchestration     | Kubernetes (EKS / GKE)                                          |
| IoT Integration   | AWS IoT Core / MQTT (GPS trackers, temperature sensors, RFID)   |
| Frontend          | React (operations dashboard), Vue.js (driver app portal), Flutter (driver mobile app) |

---

## Business Domains

| # | Domain                    | Key Services                                                          |
|---|---------------------------|-----------------------------------------------------------------------|
| 1 | Procurement               | purchase-order-service, supplier-service, rfq-service, contract-management |
| 2 | Warehouse Management      | wms-service, slotting-service, putaway, pick-pack, cycle-count        |
| 3 | Inventory Control         | inventory-service, lot-tracking, serial-tracking, expiry-management  |
| 4 | Transportation Management | tms-service, load-planning, route-optimization, carrier-selection    |
| 5 | Fleet Management          | fleet-service, vehicle-service, driver-service, maintenance-scheduler |
| 6 | Last-Mile Delivery        | delivery-service, proof-of-delivery, geofencing, eta-service          |
| 7 | Cold Chain                | cold-chain-service, temperature-monitoring, excursion-alert, compliance |
| 8 | Freight & Customs         | freight-booking, customs-service, tariff-service, compliance-checker  |
| 9 | Track & Trace             | tracking-service, event-service, milestone-service, customer-portal   |
| 10 | Returns & Reverse Logistics | returns-service, rma-service, disposition-service, refurbishment    |
| 11 | Billing & Finance         | freight-billing, invoice-service, accessorial-charges, audit-pay     |
| 12 | Supplier Portal           | supplier-portal, onboarding, performance-scorecard, collaboration    |
| 13 | Analytics & AI            | demand-forecasting, route-analytics, carrier-performance, carbon-tracker |
| 14 | IoT & Telematics          | iot-gateway, telemetry-service, geolocation, sensor-aggregator       |
| 15 | Identity & Access         | auth-service, user-service, driver-identity, mfa, rbac-service       |
| 16 | Platform                  | api-gateway, ops-bff, customer-bff, driver-bff, graphql-gateway      |

---

## Architecture

```
         ┌─────────────────────────────────────────────────────┐
         │                    API Gateway                       │
         │         (OAuth2 · mTLS · Rate Limit · WAF)          │
         └────┬──────────────┬──────────────┬───────────────────┘
              │              │              │
     ┌────────▼──────┐ ┌─────▼──────┐ ┌────▼────────────┐
     │  Ops Dashboard│ │Customer BFF│ │   Driver BFF    │
     │   (React)     │ │  (React)   │ │  (Flutter App)  │
     └────────┬──────┘ └─────┬──────┘ └────┬────────────┘
              │              │              │
    ┌─────────▼──────────────▼──────────────▼──────────────┐
    │             Internal gRPC Mesh (Istio mTLS)           │
    │  ┌──────────┐  ┌────────────┐  ┌────────────────────┐ │
    │  │   WMS    │  │    TMS     │  │  Fleet & Last Mile │ │
    │  │ Services │  │  Services  │  │  Services          │ │
    │  └──────────┘  └────────────┘  └────────────────────┘ │
    └──────────────────────┬────────────────────────────────┘
                           │ Kafka (Supply Chain Events)
          ┌────────────────┴────────────────────┐
          │                                     │
 ┌────────▼──────────┐               ┌──────────▼──────────┐
 │   IoT Gateway     │               │  Track & Trace      │
 │ MQTT · AWS IoT    │               │  Event Store        │
 │ GPS · Temp · RFID │               │  (Kafka + Cassandra) │
 └───────────────────┘               └─────────────────────┘
                           │
       ┌───────────────────▼───────────────────────┐
       │          Supply Chain Analytics           │
       │  ClickHouse · Flink · Airflow · Superset  │
       └───────────────────────────────────────────┘
```

---

## Tech Stack

### Logistics Standards & Protocols
- **EDI X12 / EDIFACT**: Electronic data interchange with suppliers, carriers, and customs (850 PO, 856 ASN, 810 Invoice)
- **GS1**: SSCC barcode generation (shipment labels), GTIN product identification, EPCIS event tracking
- **IATA**: Air cargo AWB (Air Waybill) generation and tracking
- **UN/LOCODE**: Standard location codes for ports and logistics hubs
- **MQTT**: IoT telemetry protocol for GPS trackers, temperature sensors, and RFID readers

### Infrastructure
- **Kubernetes**: EKS + GKE — multi-region; edge nodes at distribution centres for low-latency IoT ingestion
- **IoT Platform**: AWS IoT Core (MQTT broker) + custom IoT gateway service — 100K+ concurrent device connections
- **Geospatial**: PostGIS (route history, geofencing); OpenRouteService (self-hosted routing engine)
- **Time-Series**: TimescaleDB (vehicle telemetry, temperature readings, fuel consumption)
- **Graph DB**: Neo4j (route network graph, carrier relationship graph)
- **Real-time**: NATS JetStream for driver dispatch messages (sub-10ms delivery SLA)

### CI/CD & GitOps
- **CI**: Jenkins (primary), GitHub Actions, GitLab CI, Tekton
- **CD**: ArgoCD (App-of-Apps), Argo Rollouts (canary with traffic mirroring for TMS services)
- **IaC**: Terraform (EKS/GKE + IoT infrastructure), Crossplane, Ansible
- **Secrets**: HashiCorp Vault + External Secrets Operator

### Observability
- **Metrics**: Prometheus + Grafana (fleet utilisation, on-time delivery %, warehouse throughput)
- **Logs**: Loki + Fluent Bit
- **Traces**: Jaeger + OpenTelemetry (trace shipment lifecycle from booking to delivery)
- **IoT Monitoring**: Real-time fleet map on Grafana (GPS positions, temperature excursions, geofence breaches)
- **SLOs**: On-time delivery ≥ 98%, cold chain temperature compliance ≥ 99.9%

### Security
- **Identity**: Keycloak (staff + customer SSO), driver identity with biometric binding
- **API Security**: mTLS for all EDI partner connections; OAuth2 for customer-facing APIs
- **Network**: Cilium eBPF, Istio mTLS, Coraza WAF
- **Scanning**: Trivy, Semgrep, OWASP ZAP, SonarQube, Checkov (IaC)
- **Policy**: OPA/Gatekeeper, Kyverno, Falco

### AI / ML (Supply Chain Intelligence)
- **Demand Forecasting**: Time-series forecasting (Facebook Prophet + XGBoost ensemble) on 3 years of shipment history
- **Route Optimization**: Metaheuristic VRP solver (OR-Tools by Google) — minimise distance, respect time windows
- **ETA Prediction**: ML model using real-time traffic, weather, and historical delivery data (±5 min accuracy)
- **Carrier Performance Scoring**: ML-based scorecard (on-time %, damage rate, cost) for carrier selection
- **Anomaly Detection**: Unsupervised ML on temperature sensor data (Isolation Forest) — early cold chain excursion warning
- **Carbon Footprint**: Emission calculation per shipment (GLEC framework) — modal shift recommendations

---

## Key Design Decisions

1. **Event sourcing for shipment lifecycle**: Every shipment state transition is an immutable event (Kafka → Cassandra) — full audit trail, replay capability
2. **Edge-first IoT**: IoT gateway deployed at warehouse edge nodes — local MQTT broker buffers telemetry during WAN outages, syncs when connectivity restored
3. **Polyglot persistence by domain**: WMS uses PostgreSQL (transactional); telemetry uses TimescaleDB (time-series); route network uses Neo4j (graph); track & trace uses Cassandra (append-only, high write)
4. **EDI as first-class citizen**: EDI X12/EDIFACT messages parsed into internal canonical format on ingest — all downstream services work with canonical model
5. **Driver app offline-first**: Flutter mobile app works fully offline (SQLite local store) — syncs proof of delivery when connectivity restored
6. **Multi-carrier abstraction**: carrier-integration-service provides unified API — adding a new carrier requires only a new adapter, no changes to TMS core

---

## Status

- [ ] Architecture design & supply chain domain model
- [ ] Service registry & proto definitions
- [ ] EDI X12 / EDIFACT parser implementation
- [ ] IoT gateway & MQTT broker setup
- [ ] Service skeletons (healthz, metrics, graceful shutdown)
- [ ] Docker Compose (local dev stack)
- [ ] Helm charts (per-service)
- [ ] CI/CD pipelines
- [ ] GitOps (ArgoCD)
- [ ] Route optimization & AI forecasting services
