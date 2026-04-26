# tariff-service

Service in the **customs** domain of FreightForce.

**Language:** Go · **Port:** 50062

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/tariff-service/](../../../helm/charts/tariff-service/) — Helm chart
- [manifests/customs/tariff-service/](../../../manifests/customs/tariff-service/) — Raw K8s manifests
