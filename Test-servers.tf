## ================================  Node Instances ================================
resource "aws_instance" "test-nodes" {
 # ami             = var.aws_ami_id #"ami-0cd31be676780afa7"
  ami = "ami-00b696228b0185ffe"
  instance_type   = "t3.micro"
  key_name        = aws_key_pair.ec2loginkey.key_name
  security_groups = ["ssh"]
  user_data       = file("cloudinit")
}
