# accessorial-charges

Service in the **billing** domain of FreightForce.

**Language:** Go · **Port:** 50102

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/accessorial-charges/](../../../helm/charts/accessorial-charges/) — Helm chart
- [manifests/billing/accessorial-charges/](../../../manifests/billing/accessorial-charges/) — Raw K8s manifests
