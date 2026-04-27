# lot-tracking

Service in the inventory domain of FreightForce.

Language: Go Â· Port: 50040

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/lot-tracking/](../../../helm/charts/lot-tracking/) â€” Helm chart
- [manifests/inventory/lot-tracking/](../../../manifests/inventory/lot-tracking/) â€” Raw K8s manifests
