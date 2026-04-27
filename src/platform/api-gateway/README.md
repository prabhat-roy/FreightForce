# api-gateway

HTTP+gRPC ingress, OAuth2 / mTLS, rate limit, WAF.

Domain: `platform` Â· Language: Go Â· Port: 50000

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health probe
- `GET /metrics` â€” Prometheus metrics

## See also

- [proto/platform/api-gateway.proto](../../../proto/platform/api-gateway.proto) â€” gRPC contract
- [helm/charts/api-gateway/](../../../helm/charts/api-gateway/) â€” Helm chart
- [../README.md](../README.md) â€” domain overview
