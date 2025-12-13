provider "aws" {
  region = "us-east-1" 
}

resource "aws_instance" "dev_instance" {
  count = 1
  ami           = "ami-0ecb62995f68bb549"
  instance_type = "m5.large"
 

  tags = {
    Name = "Dev_Ins"  
  }
}
