provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "dev_instance" {
  ami           = "ami-0ecb62995f68bb549"
  instance_type = "t2.micro"
  subnet_id     = "subnet-074ee1f2fb2076568"

  tags = {
    Name = "Dev_Instance"
  }
}
