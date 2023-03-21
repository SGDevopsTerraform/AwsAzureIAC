variable "sgapp-region" {
  type        = string
  default     = "us-east-1"
  description = "Region to create resources"
}

variable "sgapp-vpc-range" {
  type        = string
  default     = "192.168.0.0/16"
  description = "VPC cidr range"
}

variable "sgapp-subnet-cidrs" {
  type    = list(string)
  default = ["192.168.0.0/24", "192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
  description = "VPC subnet cidr"
}

variable "sgapp-subnet-azs" {
  type    = list(string)
  default = ["a", "b", "a", "b"]
  description = "VPC subnet availability zone"
}

variable "sgapp-subnet-names" {
  type    = list(string)
  default = ["sg-app-private-subnet1", "sg-app-private-subnet2", "sgapp-db-subnet1", "sgapp-db-subnet2"]
  description = "VPC subnet name"
}