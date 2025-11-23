variable "project_name" {
  default = "expense"
}

variable "environment" {
    default = "dev"
}

variable "ami" {
  default = "ami-09c813fb71547fc4f"
}

variable "vpc_security_group_ids" {
  default = "sg-08a41470b89561bb9"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "common_tags" {
    default = {
        project_name = "expense"
        environment = "dev"
        terraform = "true"
    }
}

variable "instances" {
    default = ["mysql", "backend", "database"]
}