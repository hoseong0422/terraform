resource "aws_vpc" "hs_terraform_test_vpc" {
  cidr_block = "10.0.0.0/16"  
  tags = {
    Name = "hs_terraform_test_vpc"
    Terraform = "true"
  }
}

resource "aws_subnet" "hs_terraform_test_public_2a" {
  vpc_id     = aws_vpc.hs_terraform_test_vpc.id
  cidr_block = "10.0.0.0/20"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "hs_terraform_test_public_2a"
    Terraform = "true"
  }
}

resource "aws_subnet" "hs_terraform_test_public_2c" {
  vpc_id     = aws_vpc.hs_terraform_test_vpc.id
  cidr_block = "10.0.16.0/20"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "hs_terraform_test_public_2c"
    Terraform = "true"
  }
}

resource "aws_subnet" "hs_terraform_test_private_2a" {
  vpc_id     = aws_vpc.hs_terraform_test_vpc.id
  cidr_block = "10.0.128.0/20"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "hs_terraform_test_private_2a"
    Terraform = "true"
  }
}

resource "aws_subnet" "hs_terraform_test_private_2c" {
  vpc_id     = aws_vpc.hs_terraform_test_vpc.id
  cidr_block = "10.0.144.0/20"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "hs_terraform_test_private_2c"
    Terraform = "true"
  }
}

resource "aws_internet_gateway" "hs_terraform_test_igw" {
  vpc_id     = aws_vpc.hs_terraform_test_vpc.id

  tags = {
    Name = "hs_terraform_test_igw"
    Terraform = "true"
  }
}

resource "aws_route_table" "hs_terraform_test_rtt" {
  vpc_id     = aws_vpc.hs_terraform_test_vpc.id

  tags = {
    Name = "hs_terraform_test_rtt"
    Terraform = "true"
  }
}