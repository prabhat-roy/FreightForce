# carbon-tracker

Service in the **analytics** domain of FreightForce.

**Language:** Go · **Port:** 50143

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/carbon-tracker/](../../../helm/charts/carbon-tracker/) — Helm chart
- [manifests/analytics/carbon-tracker/](../../../manifests/analytics/carbon-tracker/) — Raw K8s manifests
