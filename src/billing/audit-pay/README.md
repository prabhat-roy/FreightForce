# audit-pay

Service in the **billing** domain of FreightForce.

**Language:** Go · **Port:** 50103

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/audit-pay/](../../../helm/charts/audit-pay/) — Helm chart
- [manifests/billing/audit-pay/](../../../manifests/billing/audit-pay/) — Raw K8s manifests
