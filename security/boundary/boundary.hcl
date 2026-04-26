controller {
  name = "controller-1"
  database { url = "postgresql://boundary@postgres-boundary/freightforce" }
}
worker {
  name = "worker-freightforce-1"
  controllers = ["controller-1.boundary.freightforce.internal"]
}
kms "awskms" {
  purpose = "root"
  key_id  = "alias/freightforce-boundary"
}
