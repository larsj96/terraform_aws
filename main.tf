

resource "aws_key_pair" "ec2loginkey" {
  key_name = "login-key"
  ## change here if you are using different key pair
 # public_key = file(pathexpand(var.ssh_key_pair_pub))
 public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDogMdWfrqX1XAc231blwxM9x3STfWdTZ84n+vu3/WM+p+6GS1Ob3FMWZB5ob1hatbrGt1ciBwbuGSiNgNWfInuOFWeF6AnBKszbuqA0q/0qTg94etDBXfG7onuAQOCH+YeosuSj2GsgdQEpGV8z2UasDICnpWjzkZ9E3Bl2pEiPCtC+lT4AB2IqL+z+Npvi1PnZ1B9JThEFioT5Ja3AOLhMxkIOgLHos7ksjlc6u9QMU3pgFHvAjYWS8plusYwrtPVHQ+8YQQvpklMaTdJOSaGCbHEwvjmItI5AxHl6IvcnpFTAhLbnmE6YaiEfGudwI9RmDeWu5/jBdmjpB4c26ZrBYnJYhB8Gr62uGydKTLFJzUXDokpFtUjEDFLRAKnWfu1wddMej3UuT1IC0L6u+hjwk78oPdsPfFgTMLL8RCHaFsgmSNCCVLLy+CWbleze3+ihs+Bs+SiGDvcT9m3zxusa7IFg6cTz4mcAqVZ/ZYvQ9Vj2BCoKr2ppmvNiJcZGmc= lanil@AZTEK-PC27RF42"
}

output "ansible-engine" {
  value = aws_instance.ansible-engine.public_ip
}

output "ansible-node-1" {
  value = aws_instance.ansible-nodes[0].public_ip
}

output "ansible-node-2" {
  value = aws_instance.ansible-nodes[1].public_ip
}