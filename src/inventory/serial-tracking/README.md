# serial-tracking

Service in the inventory domain of FreightForce.

Language: Go Â· Port: 50041

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/serial-tracking/](../../../helm/charts/serial-tracking/) â€” Helm chart
- [manifests/inventory/serial-tracking/](../../../manifests/inventory/serial-tracking/) â€” Raw K8s manifests
