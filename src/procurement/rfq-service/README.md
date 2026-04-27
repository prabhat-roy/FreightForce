# rfq-service

Service in the procurement domain of FreightForce.

Language: Go Â· Port: 50000

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/rfq-service/](../../../helm/charts/rfq-service/) â€” Helm chart
- [manifests/procurement/rfq-service/](../../../manifests/procurement/rfq-service/) â€” Raw K8s manifests
