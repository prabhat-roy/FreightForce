# rma-service

Service in the **returns** domain of FreightForce.

**Language:** Go · **Port:** 50080

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/rma-service/](../../../helm/charts/rma-service/) — Helm chart
- [manifests/returns/rma-service/](../../../manifests/returns/rma-service/) — Raw K8s manifests
