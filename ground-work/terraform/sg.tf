resource "aws_security_group" "allow_ssh" {
  name        = "allow ssh"
  description = "only ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["213.127.79.19/32"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "vault_ui" {
  name        = "vault_ui"
  description = "Enable access to the Vault UI"

  ingress {
    from_port   = 8200
    to_port     = 8200
    protocol    = "TCP"
    cidr_blocks = ["213.127.79.19/32"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}