provider "aws" {
  region = "eu-north-1b"  # Change this to your AWS region
}

resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"  # Example Amazon Linux AMI (change as needed)
  instance_type = "t2.micro"

  tags = {
    Name = "Jenkins-Terraform-Instance"
  }
}

output "instance_ip" {
  value = aws_instance.web.public_ip
}
