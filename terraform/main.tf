provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "master" {
  ami           = "ami-0a7d80731ae1b2435"
  instance_type = "t2.medium"
  tags = {
    Name = "Master-Node"
  }
}

resource "aws_instance" "monitoring_node" {
  ami           = "ami-0a7d80731ae1b2435"
  instance_type = "t2.medium"
  tags = {
    Name = "Monitoring-Node"
  }
}
