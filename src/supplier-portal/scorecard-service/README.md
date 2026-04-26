# scorecard-service

Service in the **supplier-portal** domain of FreightForce.

**Language:** Go · **Port:** 50122

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/scorecard-service/](../../../helm/charts/scorecard-service/) — Helm chart
- [manifests/supplier-portal/scorecard-service/](../../../manifests/supplier-portal/scorecard-service/) — Raw K8s manifests
