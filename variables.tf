#VPC VARIABLES
# VPC Input Variables

# VPC Name
variable "vpc_name" {
  description = "VPC Name"
  type = string 
  default = "myvpc"
}

# VPC CIDR Block
variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type = string 
  default = "10.0.0.0/16"
}



# VPC Public Subnets
variable "vpc_public_subnets" {
  description = "VPC Public Subnets"
  type = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

# # VPC Private Subnets
# variable "vpc_private_subnets" {
#   description = "VPC Private Subnets"
#   type = list(string)
#   default = ["10.0.1.0/24", "10.0.2.0/24"]
# }

# # VPC Database Subnets
# variable "vpc_database_subnets" {
#   description = "VPC Database Subnets"
#   type = list(string)
#   default = ["10.0.151.0/24", "10.0.152.0/24"]
# }

# # VPC Create Database Subnet Group (True / False)
# variable "vpc_create_database_subnet_group" {
#   description = "VPC Create Database Subnet Group"
#   type = bool
#   default = true 
# }

# # VPC Create Database Subnet Route Table (True or False)
# variable "vpc_create_database_subnet_route_table" {
#   description = "VPC Create Database Subnet Route Table"
#   type = bool
#   default = true   
# }

  
# # VPC Enable NAT Gateway (True or False) 
# variable "vpc_enable_nat_gateway" {
#   description = "Enable NAT Gateways for Private Subnets Outbound Communication"
#   type = bool
#   default = true  
# }

# # VPC Single NAT Gateway (True or False)
# variable "vpc_single_nat_gateway" {
#   description = "Enable only single NAT Gateway in one Availability Zone to save costs during our demos"
#   type = bool
#   default = true
# }





#GENERIC VARIABLES
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-east-1"  
}
# Environment Variable
variable "environment" {
  description = "Environment Variable used as a prefix"
  type = string
  default = "dev"
}
# Business Division
variable "business_divsion" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type = string
  default = "SAP"
}




#EKS Cluster Variables
variable "cluster_name" {
  description = "Name of the EKS cluster. Also used as a prefix in names of related resources."
  type        = string
  default     = "eksdemo"
}

variable "cluster_service_ipv4_cidr" {
  description = "service ipv4 cidr for the kubernetes cluster"
  type        = string
  default     = null
}

variable "cluster_version" {
  description = "Kubernetes minor version to use for the EKS cluster (for example 1.21)"
  type = string
  default     = null
}


variable "cluster_endpoint_public_access" {
  description = "Indicates whether or not the Amazon EKS public API server endpoint is enabled. When it's set to `false` ensure to have a proper private access with `cluster_endpoint_private_access = true`."
  type        = bool
  default     = true
}

variable "cluster_endpoint_public_access_cidrs" {
  description = "List of CIDR blocks which can access the Amazon EKS public API server endpoint."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}




