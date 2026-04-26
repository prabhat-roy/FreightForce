# rfq-service

Service in the **procurement** domain of FreightForce.

**Language:** Go · **Port:** 50000

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/rfq-service/](../../../helm/charts/rfq-service/) — Helm chart
- [manifests/procurement/rfq-service/](../../../manifests/procurement/rfq-service/) — Raw K8s manifests
