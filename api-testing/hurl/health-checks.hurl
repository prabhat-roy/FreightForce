GET https://api.freightforce.com/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"
