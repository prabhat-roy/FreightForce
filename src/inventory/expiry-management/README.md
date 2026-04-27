# expiry-management

Service in the inventory domain of FreightForce.

Language: Go Â· Port: 50042

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/expiry-management/](../../../helm/charts/expiry-management/) â€” Helm chart
- [manifests/inventory/expiry-management/](../../../manifests/inventory/expiry-management/) â€” Raw K8s manifests
