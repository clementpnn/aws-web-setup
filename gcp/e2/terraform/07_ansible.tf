resource "null_resource" "ansible_playbook_all" {
  depends_on = [
    google_compute_instance.instance_fr,
    google_compute_instance.instance_de
  ]

  provisioner "local-exec" {
    command = <<EOT
      sleep 30

      FR_IP="${google_compute_instance.instance_fr.network_interface[0].access_config[0].nat_ip}"
      DE_IP="${google_compute_instance.instance_de.network_interface[0].access_config[0].nat_ip}"
      INVENTORY="$FR_IP,$DE_IP,"

      ansible-playbook -i $INVENTORY ../ansible/playbook.yml \
        --private-key=~/.ssh/id_rsa \
        -u ${var.ansible_user} \
        -e "ansible_ssh_common_args='-o StrictHostKeyChecking=no'" \
        -e "db_user=${var.db_user}" \
        -e "db_password=${var.db_password}" \
        -e "db_name=${var.db_name}"
    EOT
  }
}
