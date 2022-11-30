## ================================  Node Instances ================================
resource "aws_instance" "test-nodes" {
 # ami             = var.aws_ami_id #"ami-0cd31be676780afa7"
  ami = "ami-02aeff1a953c5c2ff"
  instance_type   = "t2.micro"
  key_name        = aws_key_pair.ec2loginkey.key_name
  security_groups = ["ssh"]
  user_data       = file("user-data-ansible-nodes.sh")
}
