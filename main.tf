provider "aws" {
  region = "sa-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-07082083e19c2fa1f"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-example"
  }
}
