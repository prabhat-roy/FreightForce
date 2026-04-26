# slotting-service

Service in the **warehouse** domain of FreightForce.

**Language:** Go · **Port:** 50021

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/slotting-service/](../../../helm/charts/slotting-service/) — Helm chart
- [manifests/warehouse/slotting-service/](../../../manifests/warehouse/slotting-service/) — Raw K8s manifests
