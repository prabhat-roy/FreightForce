# compliance-checker

Service in the customs domain of FreightForce.

Language: Go Â· Port: 50063

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/compliance-checker/](../../../helm/charts/compliance-checker/) â€” Helm chart
- [manifests/customs/compliance-checker/](../../../manifests/customs/compliance-checker/) â€” Raw K8s manifests
