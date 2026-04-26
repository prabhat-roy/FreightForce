# tracking — Track & trace, milestones, customer portal

| Service | Lang | Port | Purpose |
|---|---|---|---|
| [tracking-service](tracking-service/) | Go | 50200 | Shipment track & trace |
| [event-service](event-service/) | Go | 50201 | Event ingest (Cassandra append) |
| [milestone-service](milestone-service/) | Go | 50202 | Milestone calc + SLA |
| [customer-portal-api](customer-portal-api/) | Node | 50203 | Customer tracking portal API |
