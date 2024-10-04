resource "null_resource" "ansible_playbook" {
  provisioner "local-exec" {
    command = <<EOT
      sleep 30 && ansible-playbook -i ${aws_instance.instance.public_ip}, ../ansible/playbook.yml \
    --private-key=~/.ssh/id_rsa -u admin \
    -e "ansible_ssh_common_args='-o StrictHostKeyChecking=no'"
    EOT
  }

  depends_on = [aws_instance.instance]
}
