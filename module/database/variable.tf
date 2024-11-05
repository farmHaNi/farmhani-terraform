variable "private_subnet_a_id" {
  type = string
}

variable "private_subnet_c_id" {
  type = string
}

variable "allocated_storage" {
  type        = number 
  description = "The amount of allocated storage for the database (in GB)"
  default = 10
}

variable "db_name" {
  type        = string
  description = "The name of the database"
  default = "mydb"
}

variable "engine" {
  type        = string
  description = "The database engine to be used (e.g., mysql, postgres)"
  default = "mysql"
}

variable "engine_version" {
  type        = string
  description = "The version of the database engine"
  default = "8.0"
}

variable "instance_class" {
  type        = string
  description = "The instance class (e.g., db.t2.micro)"
  default = "db.t3.micro"
}

variable "username" {
  type        = string
  description = "The master username for the database"
  default = "foo"
}

variable "password" {
  type        = string
  description = "The master password for the database"
  sensitive   = true
  default = "foobarbaz"
}

variable "parameter_group_name" {
  type        = string
  description = "The name of the parameter group to use"
  default = "default.mysql8.0"
}

variable "skip_final_snapshot" {
  type        = bool
  description = "Whether to skip the final snapshot when the DB is deleted"
  default = true
}

variable "rds_subnet_group_id" {
  type = string
}

variable "db_security_group_name" {
  type = string
}
