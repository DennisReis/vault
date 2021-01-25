#esse arquivo deve ficar na maquina target em /etc/vault-ssh-helper.d/config.hcl
vault_addr = "http://<IP_VAULT()pode ser o interno se estiver usando mesma VPC>:8200"
tls_skip_verify = false
ssh_mount_point = "ssh"
allowed_roles = "*"
allowed_cidr_list = "IP publico da maquina target/32"