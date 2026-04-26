# demand-forecasting

Service in the **analytics** domain of FreightForce.

**Language:** Go · **Port:** 50140

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/demand-forecasting/](../../../helm/charts/demand-forecasting/) — Helm chart
- [manifests/analytics/demand-forecasting/](../../../manifests/analytics/demand-forecasting/) — Raw K8s manifests
