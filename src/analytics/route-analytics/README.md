# route-analytics

Service in the analytics domain of FreightForce.

Language: Go Â· Port: 50141

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/route-analytics/](../../../helm/charts/route-analytics/) â€” Helm chart
- [manifests/analytics/route-analytics/](../../../manifests/analytics/route-analytics/) â€” Raw K8s manifests
