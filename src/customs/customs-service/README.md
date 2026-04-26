# customs-service

Service in the **customs** domain of FreightForce.

**Language:** Go · **Port:** 50061

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/customs-service/](../../../helm/charts/customs-service/) — Helm chart
- [manifests/customs/customs-service/](../../../manifests/customs/customs-service/) — Raw K8s manifests
