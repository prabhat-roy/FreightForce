# carrier-performance

Service in the **analytics** domain of FreightForce.

**Language:** Go · **Port:** 50142

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/carrier-performance/](../../../helm/charts/carrier-performance/) — Helm chart
- [manifests/analytics/carrier-performance/](../../../manifests/analytics/carrier-performance/) — Raw K8s manifests
