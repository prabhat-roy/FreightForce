# invoice-service

Service in the billing domain of FreightForce.

Language: Go Â· Port: 50101

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/invoice-service/](../../../helm/charts/invoice-service/) â€” Helm chart
- [manifests/billing/invoice-service/](../../../manifests/billing/invoice-service/) â€” Raw K8s manifests
