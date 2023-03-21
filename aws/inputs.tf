variable "sgapp-region" {
  type        = string
  default     = "us-east-1"
  description = "Region to create resources"
}

variable "sgapp-vpc-range" {
  type        = string
  default     = "10.0.0.0/16"
  description = "VPC cidr range"
}

variable "sgapp-subnet-cidrs" {
  type    = list(string)
  default = ["10.0.0.0/24", "10.0.1.0/24", "10.0.16.0/20", "10.0.32.0/20"]
  description = "VPC subnet cidr"
}

variable "sgapp-subnet-azs" {
  type    = list(string)
  default = ["a", "b", "a", "b"]
  description = "VPC subnet availability zone"
}

variable "sgapp-subnet-names" {
  type    = list(string)
  default = ["sg-app-public-subnet1", "sg-app-public-subnet2", "sg-app-private-db-subnet1", "sg-app-private-db-subnet2"]
  description = "VPC subnet name"
}