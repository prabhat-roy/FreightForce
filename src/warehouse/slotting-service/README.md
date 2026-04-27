# slotting-service

Service in the warehouse domain of FreightForce.

Language: Go Â· Port: 50021

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/slotting-service/](../../../helm/charts/slotting-service/) â€” Helm chart
- [manifests/warehouse/slotting-service/](../../../manifests/warehouse/slotting-service/) â€” Raw K8s manifests
