# freight-billing

Service in the **billing** domain of FreightForce.

**Language:** Go · **Port:** 50100

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/freight-billing/](../../../helm/charts/freight-billing/) — Helm chart
- [manifests/billing/freight-billing/](../../../manifests/billing/freight-billing/) — Raw K8s manifests
