variable "vpc_name" {
    type        = string
    default     = "giovanni"
    description = "vpc name" 
}

variable "vpc_cidr" {
    type        = string
    default     = "10.0.0.0/16"
    description = "vpc cidr"
}

variable "public_cidr" {
    type        = string
    default     = "10.0.2.0/24"
    description = "public subnet cidr"
}

variable "private_cidr" {
    type        = string
    default     = "10.0.1.0/24"
    description = "private subnet cidr" 
}

variable "azs" {
    type        = list
    default     = ["us-east-1a", "us-east-1b"]
    description = "availability zones"
}

variable "bih_instance_name" {
    type        = string
    default     = "bih"
    description = "description" 
}

variable "bih_ami" {
    type        = string
    default     = "ami-0715c1897453cabd1"
    description = "bih ami"
}

variable "bih_instance_type" {
    type        = string
    default     = "t2.micro"
    description = "bih instance type"
}

variable "env" {
    type        = string
    default     = "ops"
    description = "locals vars" 
}

variable "sg" {
    type        = string
    default     = "security_group"
    description = "security group"
}

variable "team" {
    type        = string
    default     = "biggy"
    description = "locals vars"
}

variable "ingressrules" {
    type        = list
    default     = [80, 443, 22]
    description = "inbound rules"
}

variable "egressrules" {
    type        = list
    default     = [80, 443, 22]
    description = "inbound rules"
}