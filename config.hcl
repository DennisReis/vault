storage "file" {
  path = "/var/lib/vault/data"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 1
}
ui = true
api_addr = "http://0.0.0.0:8200"
cluster_name = "DMPRLab"
disable_mlock = true
disable_cache = true
max_lease_ttl = "12h"
default_lease_ttl = "6h"
pid_file = "/var/lib/vault/vault.pid"
