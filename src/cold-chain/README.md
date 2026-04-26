# cold-chain — Cold chain monitoring, excursion alerting, compliance

Hard SLO: excursion alerts must be delivered within 30 seconds. See
[security/opa/policies/cold-chain-sla-enforcement.rego](../../security/opa/policies/cold-chain-sla-enforcement.rego).

| Service | Lang | Port | Purpose |
|---|---|---|---|
| [cold-chain-service](cold-chain-service/) | Kotlin | 50160 | Cold-chain shipment lifecycle |
| [temperature-monitoring](temperature-monitoring/) | Kotlin | 50161 | Temperature trace ingest (TimescaleDB) |
| [excursion-alert](excursion-alert/) | Kotlin | 50162 | Excursion detection, 30s page |
| [cold-chain-compliance](cold-chain-compliance/) | Kotlin | 50163 | GDP / FSMA / VAL-Q reports |
