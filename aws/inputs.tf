variable "sgapp-region" {
  type        = string
  default     = "us-east-1"
  description = "Region to create resources"
}

variable "sgapp-vpc-range" {
  type        = string
  default     = "192.168.0.0/16"
  description = "VPC Cidr Range"
}

variable "sgapp-Subnet-cidrs" {
  type    = list(string)
  default = ["192.168.0.0/24", "192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
}

variable "sgapp-subnet-azs" {
  type    = list(string)
  default = ["a", "b", "a", "b"]

}

variable "sgapp-subnet-names" {
  type    = list(string)
  default = ["sgapp1", "sgapp2", "sgdb1", "sgdb2"]

}