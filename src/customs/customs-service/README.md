# customs-service

Service in the customs domain of FreightForce.

Language: Go Â· Port: 50061

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/customs-service/](../../../helm/charts/customs-service/) â€” Helm chart
- [manifests/customs/customs-service/](../../../manifests/customs/customs-service/) â€” Raw K8s manifests
