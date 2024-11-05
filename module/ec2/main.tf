data "aws_ami" "python_ami" {
    most_recent = true
    filter {
        name = "name"
        values = ["python*"]
    }
}

# Network Interface
resource "aws_instance" "myec2" {
    ami = data.aws_ami.python_ami.id
    instance_type = var.ami_worker_node_tier
    availability_zone = var.az_a
    security_groups = [var.web_sg_id]
    subnet_id = var.public_subnet_a_id
    associate_public_ip_address = true
    tags = {
        Name = "backend"
    }
}
