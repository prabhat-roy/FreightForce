# rma-service

Service in the returns domain of FreightForce.

Language: Go Â· Port: 50080

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/rma-service/](../../../helm/charts/rma-service/) â€” Helm chart
- [manifests/returns/rma-service/](../../../manifests/returns/rma-service/) â€” Raw K8s manifests
