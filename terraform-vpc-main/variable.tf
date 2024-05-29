variable "cidr_block" {
    type = string
    default = "10.0.0.0/16"
  
}

variable "project_name" {
    type = string
  
}

variable "common_tags" {
    type = map
    default = {
        project = "expense"
        terraform = "true"
    }
}

variable "Environment" {
    type = string
  
}

variable "vpc_tags" {
    default = {}
  
}

variable "igw_tags" {
    default = {}
  
}

variable "public_subnet_cidrs" {
    type = list
    validation {
    condition =  length(var.public_subnet_cidrs) == 2
    error_message = "please provide the two cidr_blocks"
    }
}

variable "public_subnet_cidrs_tags" {
    default = {}
  
}

variable "private_subnet_cidrs" {
    type = list
    validation {
    condition =  length(var.private_subnet_cidrs) == 2
    error_message = "please provide the two cidr_blocks"
    }
}

variable "private_subnet_cidrs_tags" {
    type = map
    default = {}
}

variable "database_subnet_cidrs" {
    type = list
    validation {
    condition =  length(var.database_subnet_cidrs) == 2
    error_message = "please provide the two cidr_blocks"
    }
}

variable "database_subnet_cidrs_tags" {
    type = map
    default = {}
}

variable "nat_gatwway_subnet_cidrs_tags" {
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

variable "is_peering_requireed" {
    type = bool
    default = false
}

variable "acceptor_vpc_id" {
    type = string
    default = ""
}


variable "peering_tags" {
    default = {}
  
}

variable "database_subnet_group_tags" {
    default = {}
  
}