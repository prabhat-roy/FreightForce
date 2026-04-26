# disposition-service

Service in the **returns** domain of FreightForce.

**Language:** Go · **Port:** 50081

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/disposition-service/](../../../helm/charts/disposition-service/) — Helm chart
- [manifests/returns/disposition-service/](../../../manifests/returns/disposition-service/) — Raw K8s manifests
