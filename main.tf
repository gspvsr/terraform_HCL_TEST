provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "dev_instance" {
  count = 1
  ami           = "ami-0ecb62995f68bb549"
  instance_type = "t2.micro"
 

  tags = {
    Name = "Dev_Ins"  
  }
}
