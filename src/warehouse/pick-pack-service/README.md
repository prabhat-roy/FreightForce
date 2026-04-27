# pick-pack-service

Service in the warehouse domain of FreightForce.

Language: Go Â· Port: 50022

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/pick-pack-service/](../../../helm/charts/pick-pack-service/) â€” Helm chart
- [manifests/warehouse/pick-pack-service/](../../../manifests/warehouse/pick-pack-service/) â€” Raw K8s manifests
