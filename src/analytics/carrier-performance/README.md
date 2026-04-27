# carrier-performance

Service in the analytics domain of FreightForce.

Language: Go Â· Port: 50142

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/carrier-performance/](../../../helm/charts/carrier-performance/) â€” Helm chart
- [manifests/analytics/carrier-performance/](../../../manifests/analytics/carrier-performance/) â€” Raw K8s manifests
