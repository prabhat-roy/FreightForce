# platform — Edge ingress + BFFs + GraphQL

| Service | Lang | Port | Purpose |
|---|---|---|---|
| [api-gateway](api-gateway/) | Go | 50000 | HTTP+gRPC ingress, OAuth2/mTLS, rate limit, WAF |
| [ops-bff](ops-bff/) | Go | 50001 | Backend-for-frontend for ops dashboard (React) |
| [customer-bff](customer-bff/) | Go | 50002 | Backend-for-frontend for customer tracking portal |
| [driver-bff](driver-bff/) | Go | 50003 | Backend-for-frontend for Flutter driver mobile |
| [graphql-gateway](graphql-gateway/) | Go | 50004 | GraphQL stitched gateway |
