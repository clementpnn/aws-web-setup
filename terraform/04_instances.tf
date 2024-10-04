resource "aws_instance" "instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = aws_key_pair.ssh_key.key_name

  vpc_security_group_ids = [
    aws_security_group.allow_ssh.id,
    aws_security_group.allow_http_https.id
  ]
  subnet_id                   = aws_subnet.subnet.id
  associate_public_ip_address = true

  depends_on = [aws_internet_gateway.igw]
}
