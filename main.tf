provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "dev_instance" {
  count = 1
  ami           = "ami-0f5fcdfbd140e4ab7"
  instance_type = "t2.micro"
 

  tags = {
    Name = "Dev_Ins"  
  }
}
