# tariff-service

Service in the customs domain of FreightForce.

Language: Go Â· Port: 50062

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/tariff-service/](../../../helm/charts/tariff-service/) â€” Helm chart
- [manifests/customs/tariff-service/](../../../manifests/customs/tariff-service/) â€” Raw K8s manifests
