# demand-forecasting

Service in the analytics domain of FreightForce.

Language: Go Â· Port: 50140

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/demand-forecasting/](../../../helm/charts/demand-forecasting/) â€” Helm chart
- [manifests/analytics/demand-forecasting/](../../../manifests/analytics/demand-forecasting/) â€” Raw K8s manifests
