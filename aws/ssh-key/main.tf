resource "aws_key_pair" "deployer" {
  key_name   = "kmj-key-pair"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDNaQ25j89oXtvRUHm53WE81nBK16NQLoLOqcXk3F0X1nvcEYG4hM07FspmtNK+UdIbOgwdYqvg+9lEyTC9MWZBXMMvLRToTWG4......"
}