# Default policy for FreightForce application services.
# Each service consumes its own KV path; Postgres / Redis credentials are dynamic.
path "freightforce/data/{{identity.entity.aliases.auth_kubernetes_*.metadata.service_account_name}}/*" {
  capabilities = ["read"]
}
path "database/creds/freightforce-{{identity.entity.aliases.auth_kubernetes_*.metadata.service_account_name}}" {
  capabilities = ["read"]
}
path "transit/encrypt/freightforce" { capabilities = ["update"] }
path "transit/decrypt/freightforce" { capabilities = ["update"] }
