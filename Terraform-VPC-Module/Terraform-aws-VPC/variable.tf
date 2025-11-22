variable "project_name" {

}

variable "environment" {

}

variable "cidr_block" {

}

variable "enable_dns_hostnames" {
  default = true
}

# mandatoryt
variable "common_tags" {
  type = map(any)
  #default = {}
}

variable "vpc_tags" {

}

variable "igw_tags" {
  default = {}
}

### Public-subnet-1a & 1b ###

variable "public_subnet_cidrs" {
    type = list
    validation {
        condition     = length(var.public_subnet_cidrs) == 2
        error_message = "Please provide 2 valid public subnet CIDR"
    }
}

variable "public_subnet_tags" {
  default = {}
}

### Private-subnet-1a & 1b ###

variable "private_subnet_cidrs" {
    type = list
    validation {
        condition     = length(var.private_subnet_cidrs) == 2
        error_message = "Please provide 2 valid private subnet CIDR"
    }
}

variable "private_subnet_tags" {
  default = {}
}

### database-subnet-1a & 1b ###

variable "database_subnet_cidrs" {
    type = list
    validation {
        condition     = length(var.database_subnet_cidrs) == 2
        error_message = "Please provide 2 valid database subnet CIDR"
    }
}

variable "database_subnet_tags" {
  default = {}
}

variable "nat_gw_tags" {
    default = {}
}

variable "public_route_table_tags" {
  default = {}
}
variable "private_route_table_tags" {
  default = {}
}
variable "database_route_table_tags" {
  default = {}
}

variable "is_peering_required" {
    default = false
}

variable "vpc_peering_tags" {
    default = {}
}

variable "vpc_cidr" {

}