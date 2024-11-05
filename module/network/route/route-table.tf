# Route Table
resource "aws_route_table" "public_route_table" {
    vpc_id = aws_vpc.web.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }

    route {
        cidr_block = aws_vpc.web.cidr_block 
        gateway_id = "local"
    }

    tags = {
        Name = "public_route_table"
    }
}

resource "aws_route_table" "private_route_table" {
    vpc_id = aws_vpc.web.id

    route {
        cidr_block = aws_vpc.web.cidr_block
        gateway_id = "local"
    }

    tags = {
        Name = "private_route_table"
    }
}
