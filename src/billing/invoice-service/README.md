# invoice-service

Service in the **billing** domain of FreightForce.

**Language:** Go · **Port:** 50101

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/invoice-service/](../../../helm/charts/invoice-service/) — Helm chart
- [manifests/billing/invoice-service/](../../../manifests/billing/invoice-service/) — Raw K8s manifests
