# carbon-tracker

Service in the analytics domain of FreightForce.

Language: Go Â· Port: 50143

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/carbon-tracker/](../../../helm/charts/carbon-tracker/) â€” Helm chart
- [manifests/analytics/carbon-tracker/](../../../manifests/analytics/carbon-tracker/) â€” Raw K8s manifests
