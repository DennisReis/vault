data "aws_ami" "vault" {
  most_recent = true

  filter {
    name   = "name"
    values = ["vault*"]
  }

  owners = ["674680611175"]
}

resource "aws_instance" "vault" {
  count         = 1
  ami = data.aws_ami.vault.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id,aws_security_group.vault_ui.id]
  key_name      = "vault"

  tags = {
    Name       = "Vault-${count.index}"
    Training   = "linuxtips"
    Subject    = "vault"
  }
}