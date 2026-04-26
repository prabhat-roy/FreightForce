# serial-tracking

Service in the **inventory** domain of FreightForce.

**Language:** Go · **Port:** 50041

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/serial-tracking/](../../../helm/charts/serial-tracking/) — Helm chart
- [manifests/inventory/serial-tracking/](../../../manifests/inventory/serial-tracking/) — Raw K8s manifests
