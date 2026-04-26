# contract-management

Service in the **procurement** domain of FreightForce.

**Language:** Go · **Port:** 50001

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/contract-management/](../../../helm/charts/contract-management/) — Helm chart
- [manifests/procurement/contract-management/](../../../manifests/procurement/contract-management/) — Raw K8s manifests
