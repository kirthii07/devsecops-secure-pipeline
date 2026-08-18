terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "app" {
  ami           = var.ami_id
  instance_type = var.instance_type

  user_data = <<-EOF
              #!/bin/bash

              dnf update -y
              dnf install -y docker

              systemctl enable docker
              systemctl start docker

              docker pull kirtithikaa/devsecops-app:1.3

              docker rm -f devsecops-app || true

              docker run -d \
                --name devsecops-app \
                -p 5000:5000 \
                kirtithikaa/devsecops-app:1.3
              EOF

  tags = {
    Name = "devsecops-app"
  }
}