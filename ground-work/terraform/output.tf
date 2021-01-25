output "ip_address" {
  #value = "${aws_instance.web[*].public_ip}"
  value = {
    for instance in aws_instance.vault :
    instance.id => instance.public_ip
  }
}