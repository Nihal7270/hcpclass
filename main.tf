provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  count                  = 4
  ami                    = "ami-06259b63260eddc13"
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
