# wms-service

Service in the **warehouse** domain of FreightForce.

**Language:** Go · **Port:** 50020

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/wms-service/](../../../helm/charts/wms-service/) — Helm chart
- [manifests/warehouse/wms-service/](../../../manifests/warehouse/wms-service/) — Raw K8s manifests
