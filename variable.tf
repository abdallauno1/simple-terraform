# variables.tf
variable "region" {
  default = "us-east-1"
}
variable "amis" {
  default = {
    "us-east-1" = "ami-0e472ba40eb589f49"
  }
}
variable "availabilityZone" {
  default = "us-east-1a"
}
variable "instanceType" {
  default = "t2.micro"
}
variable "keyName" {
  default = "ec2-key"
}
variable "subnet" {
  default = "subnet-<PUT IN YOUR VPC SUBNET>"
}
variable "securityGroups" {
  default = "sg-0f900c7f0e865ae16"
}
variable "vpcId" {
  default = "vpc-08d390aeb7e14847d"
}

variable "instanceName" {
  default = "web-app"
}

# ami-0b898040803850657 is the free Amazon Linux 2 AMI
# for the us-east-1 region. Amazon Linux 2 
# is a downstream version of Red Hat Enterprise Linux / 
# Fedora / CentOS. It is analogous to RHEL 7.


# end of variables.tf