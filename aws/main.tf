resource "aws_vpc" "sgapp" {
  cidr_block = var.sgapp-vpc-range
  tags = {
    Name = "sg-app-vpc"
  }

}

resource "aws_subnet" "subnets" {
  count             = length(var.sgapp-subnet-cidrs)
  cidr_block        = var.sgapp-subnet-cidrs[count.index]
  availability_zone = "${var.sgapp-region}${var.sgapp-subnet-azs[count.index]}"
  vpc_id            = aws_vpc.sgapp.id #implicit dependency
  depends_on = [
    aws_vpc.sgapp
  ]
  tags = {
    Name = var.sgapp-subnet-names[count.index]
  }

}