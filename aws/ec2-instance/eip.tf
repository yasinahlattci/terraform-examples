# This resource creates Elastic IP for the EC2 instance

resource "aws_eip" "ec2" {
  instance = aws_instance.example.id
  vpc      = true
}