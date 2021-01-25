storage "consul" {
  address               = "127.0.0.1:8500"
  path                  = "vault/"
}

listener "tcp" {
  address               = "0.0.0.0:8200"
  cluster_address       = "172.31.38.97:8201"
  tls_disable           = 1
}

ui = true
api_addr                = "http://0.0.0.0:8200"
cluster_address         = "http://172.31.38.97:8201"
cluster_name            = "DMPRLab"
disable_mlock           = true
disable_cache           = true
max_lease_ttl           = "12h"
default_lease_ttl       = "6h"  
pid_file                = "/var/lib/vault/vault.pid"
