variable "vpc_cidr" {
    type = string
    description = "VPC CIDR"
    default = "10.0.0.0/16"
  
}

variable "cidr_public_subnet" {
    type = string
    description = "Enter a CIDR value for the Subnet public"
    default = "10.0.1.0/24"
}

variable "cidr_private_subnet" {
    type = string
    description = "Enter a CIDR value for the Subnet private"
    default = "10.0.2.0/24"
}

variable "securitygroup_name" {
    type = string
    description = "Enter the security group name"
    default = "Democlase05"
}