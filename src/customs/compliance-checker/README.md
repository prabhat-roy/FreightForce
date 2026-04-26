# compliance-checker

Service in the **customs** domain of FreightForce.

**Language:** Go · **Port:** 50063

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/compliance-checker/](../../../helm/charts/compliance-checker/) — Helm chart
- [manifests/customs/compliance-checker/](../../../manifests/customs/compliance-checker/) — Raw K8s manifests
