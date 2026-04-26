# pick-pack-service

Service in the **warehouse** domain of FreightForce.

**Language:** Go · **Port:** 50022

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/pick-pack-service/](../../../helm/charts/pick-pack-service/) — Helm chart
- [manifests/warehouse/pick-pack-service/](../../../manifests/warehouse/pick-pack-service/) — Raw K8s manifests
