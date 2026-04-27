# refurbishment

Service in the returns domain of FreightForce.

Language: Go Â· Port: 50082

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/refurbishment/](../../../helm/charts/refurbishment/) â€” Helm chart
- [manifests/returns/refurbishment/](../../../manifests/returns/refurbishment/) â€” Raw K8s manifests
