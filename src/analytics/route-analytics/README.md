# route-analytics

Service in the **analytics** domain of FreightForce.

**Language:** Go · **Port:** 50141

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/route-analytics/](../../../helm/charts/route-analytics/) — Helm chart
- [manifests/analytics/route-analytics/](../../../manifests/analytics/route-analytics/) — Raw K8s manifests
