# Network Interface
resource "aws_instance" "myec2" {
    ami = var.ami_spring_snapshot
    instance_type = var.ami_worker_node_tier
    availability_zone = var.az_a
    security_groups = [var.web_sg_id]
    subnet_id = var.private_subnet_id
    associate_public_ip_address = true
}
