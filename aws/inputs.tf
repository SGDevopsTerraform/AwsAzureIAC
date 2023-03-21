variable "sg-region" {
  type        = string
  default     = "us-east-1"
  description = "Region to create resources"
}

variable "sg-vpc-range" {
  type        = string
  default     = "192.168.0.0/16"
  description = "VPC Cidr Range"
}

variable "sg-Subnet-cidrs" {
  type    = list(string)
  default = ["192.168.0.0/24", "192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
}

variable "sg-subnet-azs" {
  type    = list(string)
  default = ["a", "b", "a", "b"]

}

variable "sg-subnet-names" {
  type    = list(string)
  default = ["app1", "app2", "db1", "db2"]

}