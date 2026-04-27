# freight-billing

Service in the billing domain of FreightForce.

Language: Go Â· Port: 50100

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/freight-billing/](../../../helm/charts/freight-billing/) â€” Helm chart
- [manifests/billing/freight-billing/](../../../manifests/billing/freight-billing/) â€” Raw K8s manifests
