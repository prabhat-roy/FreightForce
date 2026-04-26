# refurbishment

Service in the **returns** domain of FreightForce.

**Language:** Go · **Port:** 50082

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/refurbishment/](../../../helm/charts/refurbishment/) — Helm chart
- [manifests/returns/refurbishment/](../../../manifests/returns/refurbishment/) — Raw K8s manifests
