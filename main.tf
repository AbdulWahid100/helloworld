provider "aws" {
  region = "eu-central-1"
  assume_role {
    role_arn =  "arn:aws:iam::236694170743:role/tfe-agent-role"
  }
}

# Create an EC2 instance
resource "aws_instance" "hello-world" {
  ami           = "ami-06c39ed6b42908a36"
  instance_type = "t2.micro"
  subnet_id="subnet-08255b17ebb2c8a9b"
    tags = {
    Name = "HelloWorld"
  }
}
