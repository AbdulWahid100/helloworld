provider "aws" {
  region = "eu-central-1"
}

# Create an EC2 instance
resource "aws_instance" "hello-world" {
  ami           = "ami-06c39ed6b42908a36"
  instance_type = "t2.micro"
  subnet_id="subnet-0b2cc8cfd58e5c754"
    tags = {
    Name = "HelloWorld"
  }
}
# Create an EC2 instance
resource "aws_instance" "another-hello-world" {
  ami           = "ami-06c39ed6b42908a36"
  instance_type = "t2.micro"
  subnet_id="subnet-0b2cc8cfd58e5c754"
    tags = {
    Name = "AnotherHelloWorld"
  }
}
