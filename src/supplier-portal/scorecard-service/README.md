# scorecard-service

Service in the supplier-portal domain of FreightForce.

Language: Go Â· Port: 50122

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/scorecard-service/](../../../helm/charts/scorecard-service/) â€” Helm chart
- [manifests/supplier-portal/scorecard-service/](../../../manifests/supplier-portal/scorecard-service/) â€” Raw K8s manifests
