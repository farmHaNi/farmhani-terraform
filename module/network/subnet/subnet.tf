# Subnet
resource "aws_subnet" "private_a" {
    vpc_id = var.web_vpc_id
    cidr_block = var.private_a_subnet_cidr_block 
    availability_zone = var.private_a_subnet_az 

    tags = {
        Name = "private_a"
    }
}

resource "aws_subnet" "private_c" {
    vpc_id = var.web_vpc_id
    cidr_block = var.private_c_subnet_cidr_block
    availability_zone = var.private_c_subnet_az 

    tags = {
        Name = "private_c"
    }
}
