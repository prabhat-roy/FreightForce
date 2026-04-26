# lot-tracking

Service in the **inventory** domain of FreightForce.

**Language:** Go · **Port:** 50040

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/lot-tracking/](../../../helm/charts/lot-tracking/) — Helm chart
- [manifests/inventory/lot-tracking/](../../../manifests/inventory/lot-tracking/) — Raw K8s manifests
