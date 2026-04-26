# freight-booking

Service in the **customs** domain of FreightForce.

**Language:** Go · **Port:** 50060

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/freight-booking/](../../../helm/charts/freight-booking/) — Helm chart
- [manifests/customs/freight-booking/](../../../manifests/customs/freight-booking/) — Raw K8s manifests
