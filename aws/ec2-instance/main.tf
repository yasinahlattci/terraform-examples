data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "example" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  availability_zone = var.availabiliy_zone
  key_name = var.key-pair-name
  root_block_device {
    volume_size = 20
    volume_type = "gp2"
    delete_on_termination = true
    tags = {}
  }
  user_data = <<EOF
  #!/bin/bash
  sudo apt update
  sudo apt install docker.io
  sudo usermod -a -G docker ubuntu
  sudo usermod -a -G docker gitlab-runner
  EOF
}
