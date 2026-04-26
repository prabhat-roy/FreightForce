# Src — FreightForce

Backend service source — one folder per business domain. 18 domains, 75+ services.

| Domain | Languages | Services |
|---|---|---|
| [platform/](platform/) | Go | api-gateway, ops-bff, customer-bff, driver-bff, graphql-gateway |
| [identity/](identity/) | Rust, Java, Go, Kotlin | auth, user, driver-identity, mfa, rbac |
| [procurement/](procurement/) | Java, Kotlin | purchase-order, supplier, rfq, contract-management |
| [warehouse/](warehouse/) | Java | wms, slotting, putaway, pick-pack, cycle-count |
| [inventory/](inventory/) | Java | inventory, lot/serial tracking, expiry |
| [transportation/](transportation/) | Go, Python | tms, load-planning, route-opt, carrier-selection, carrier-integration |
| [fleet/](fleet/) | Go | fleet, vehicle, driver, maintenance |
| [last-mile/](last-mile/) | Go, Python | delivery, POD, geofencing, ETA |
| [cold-chain/](cold-chain/) | Kotlin | service, temperature, excursion-alert, compliance |
| [customs/](customs/) | Java | freight-booking, customs, tariff, compliance-checker |
| [tracking/](tracking/) | Go, Node | tracking, event, milestone, customer-portal-api |
| [returns/](returns/) | Java | returns, RMA, disposition, refurbishment |
| [billing/](billing/) | Java | freight-billing, invoice, accessorial, audit-pay |
| [supplier-portal/](supplier-portal/) | Java | portal, onboarding, scorecard, collaboration |
| [analytics/](analytics/) | Python | demand-forecast, route-analytics, carrier-perf, carbon |
| [iot/](iot/) | Rust, Go | gateway, telemetry, geolocation, sensor-aggregator |
| [edi/](edi/) | Rust, Go | parser, gateway, translator |
| [notifications/](notifications/) | Node | orchestrator, sms, email, push, in-app |

See language rules in [../CLAUDE.md](../CLAUDE.md). Every service ships:
`Dockerfile`, `Makefile`, `.env.example`, `README.md`, `/healthz`, `/metrics`.
