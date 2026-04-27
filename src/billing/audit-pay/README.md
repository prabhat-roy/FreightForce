# audit-pay

Service in the billing domain of FreightForce.

Language: Go Â· Port: 50103

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/audit-pay/](../../../helm/charts/audit-pay/) â€” Helm chart
- [manifests/billing/audit-pay/](../../../manifests/billing/audit-pay/) â€” Raw K8s manifests
