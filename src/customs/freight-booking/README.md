# freight-booking

Service in the customs domain of FreightForce.

Language: Go Â· Port: 50060

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/freight-booking/](../../../helm/charts/freight-booking/) â€” Helm chart
- [manifests/customs/freight-booking/](../../../manifests/customs/freight-booking/) â€” Raw K8s manifests
