# IGW
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.web.id

  tags = {
    Name = "main"
  }
}
