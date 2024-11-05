provider "aws" {
    region = "ap-northeast-2"
}

module "network" {
    source = "./module/network"
}

module "vpc" {
    source = "./module/network/vpc"
}

module "security-group" {
    source = "./module/network/security-group"
    web_vpc_id = module.vpc.web_vpc_id
    web_vpc_cidr_block = module.vpc.web_vpc_cidr_block
}

module "subnet" {
    source = "./module/network/subnet"
    web_vpc_id = module.vpc.web_vpc_id
}

module "ec2" {
    source = "./module/ec2"
    web_sg_id = module.security-group.web_sg_id
    private_subnet_id = module.subnet.private_subnet_a
    availability_zone = ["ap-northeast-2a", "ap-northeast-2c"]
}
