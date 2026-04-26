# expiry-management

Service in the **inventory** domain of FreightForce.

**Language:** Go · **Port:** 50042

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/expiry-management/](../../../helm/charts/expiry-management/) — Helm chart
- [manifests/inventory/expiry-management/](../../../manifests/inventory/expiry-management/) — Raw K8s manifests
