# contract-management

Service in the procurement domain of FreightForce.

Language: Go Â· Port: 50001

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/contract-management/](../../../helm/charts/contract-management/) â€” Helm chart
- [manifests/procurement/contract-management/](../../../manifests/procurement/contract-management/) â€” Raw K8s manifests
