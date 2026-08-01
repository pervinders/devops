resource "aws_vpc" "main" {
 cidr_block = "10.0.0.0/16"
  tags = {
   Name = "custom_vpc"
}
}

resource "aws_subnet" "public" {
   vpc_id = aws_vpc.main.id
   cidr_block = "10.0.1.0/24"
   availability_zone = "ap-south-1a"
   tags = {
   Name = "subnet_public"

}
}

resource "aws_subnet" "private" {
 vpc_id = aws_vpc.main.id
 cidr_block = "10.0.2.0/24"
 availability_zone = "ap-south-1b"
 tags = {
  Name = "subnet_private"

}
}

resource "aws_instance" "private" {
   instance_type="t3.micro"
  ami = "ami-01a00762f46d584a1"
   subnet_id = aws_subnet.private.id
   tags = {
        Name = "test_machine_private"
}
}
 

resource "aws_instance" "public" {
  instance_type = "t3.micro"
  ami = "ami-01a00762f46d584a1"
  subnet_id = aws_subnet.public.id
  tags = {
    Name = "test_machine_public"

}

 }
