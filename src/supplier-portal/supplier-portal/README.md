# supplier-portal

Service in the **supplier-portal** domain of FreightForce.

**Language:** Go · **Port:** 50120

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/supplier-portal/](../../../helm/charts/supplier-portal/) — Helm chart
- [manifests/supplier-portal/supplier-portal/](../../../manifests/supplier-portal/supplier-portal/) — Raw K8s manifests
