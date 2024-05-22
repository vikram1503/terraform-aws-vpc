#####project###
variable "project_name" {
    type = string
  
}
variable "environment" {
    type = string
    default = "dev"
  
}
variable "common_tags" {
    type = map

  
}
###vpc###
variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
  
}

variable "enable_dns_hostnames" {
    type = bool
    default = true
  
}

variable "vpc_tags" {
    type = map
    default = {}
}

###igw###

variable "igw_tags" {
    type = map
    default = {}
  
}

###public subnet###

variable "public_subnet_cidrs" {
    type = list
    validation {
      condition = length(var.public_subnet_cidrs) == 2
      error_message = "please provide 2 valid public subnet cidr"
    }
  
}

variable "public_subnet_cidrs_tags" {
    type = map
    default = {}  
}

#### private subnet ####
variable "private_subnet_cidrs" {
    type = list
    validation {
      condition = length(var.private_subnet_cidrs) == 2
      error_message = "please provide 2 valid private subnet cidr"
    }
  
}

variable "private_subnet_cidrs_tags" {
    type = map
    default = {}  
}

### db subnet ###

variable "db_subnet_cidrs" {
    type = list
    validation {
      condition = length(var.db_subnet_cidrs) == 2
      error_message = "please provide 2 valid private subnet cidr"
    }
  
}

variable "db_subnet_cidrs_tags" {
    type = map
    default = {}  
}

variable "db_subnet_group_tags" {
    type = map
    default = {}
}

### nat ###
 variable "nat_gateway_tags" {
    type = map
    default = {}
 }

 variable "public_route_table_tags" {
    type = map
    default = {}
 }

 variable "private_route_table_tags" {
    type = map
    default = {}

 }

 variable "db_route_table_tags" {
    type = map
    default = {}
 }

 variable "is_peering_required" {
    type = bool
    default = false
    
 }

 variable "acceptor_vpc_id" {
    type = string
    default = ""
   
 }

 variable "vpc_peering_tags" {
    type = map
    default = {}
 }