# onboarding-service

Service in the **supplier-portal** domain of FreightForce.

**Language:** Go · **Port:** 50121

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/onboarding-service/](../../../helm/charts/onboarding-service/) — Helm chart
- [manifests/supplier-portal/onboarding-service/](../../../manifests/supplier-portal/onboarding-service/) — Raw K8s manifests
