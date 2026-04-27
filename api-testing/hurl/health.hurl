# Health check for all critical services
GET https://freightforce.internal/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"

GET https://api.freightforce.internal/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"
