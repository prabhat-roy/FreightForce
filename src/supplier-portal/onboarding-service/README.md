# onboarding-service

Service in the supplier-portal domain of FreightForce.

Language: Go Â· Port: 50121

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/onboarding-service/](../../../helm/charts/onboarding-service/) â€” Helm chart
- [manifests/supplier-portal/onboarding-service/](../../../manifests/supplier-portal/onboarding-service/) â€” Raw K8s manifests
