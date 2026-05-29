provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-00fa360e28f425da0"
  instance_type = "t3.micro"

  tags = {
    Name = "raham-instance"
  }
}





