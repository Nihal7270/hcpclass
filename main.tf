provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  count                  = 4
  ami                    = "ami-01a00762f46d584a1"
  instance_type          = "c7i-flex.large"
  key_name               = "practice"
  vpc_security_group_ids = ["sg-0bb52e16a8e2ac95d"]
  tags = {
    Name = var.instance_names[count.index]
  }
}

variable "instance_names" {
  default = ["jenkins", "tomcat-1", "tomcat-2", "Monitoring server"]
}
