# disposition-service

Service in the returns domain of FreightForce.

Language: Go Â· Port: 50081

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/disposition-service/](../../../helm/charts/disposition-service/) â€” Helm chart
- [manifests/returns/disposition-service/](../../../manifests/returns/disposition-service/) â€” Raw K8s manifests
