resource "aws_instance" "vproject_private_instance" {
  ami                    = var.image_name
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = aws_subnet.vproject_private_subnet.id
  vpc_security_group_ids = [aws_security_group.allow_all.id]

  tags = {
    Name       = "VProject Private VM"
    Env        = "Development"
    Owner      = "Veera"
    CostCenter = "ABCD"
  }

  user_data = <<-EOF
    #!/bin/bash
        sudo apt-get update
        sudo apt-get install -y nginx jq
        echo "<h1> Welcome to Veera's world <h1> <br/> <h1>  This is actually from Terraform on ${var.vpc_name}- Private Server </h1>" | sudo tee /var/www/html/index.nginx-debian.html
    EOF
}