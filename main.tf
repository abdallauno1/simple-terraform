provider "aws" {
  /*
  access_key = var.access_key
  secret_key = var.secret_key
  */
  region     = var.region
}

resource "aws_instance" "web-app-instance" {
  ami               = lookup(var.amis, var.region)
  instance_type     = var.instanceType
  availability_zone = var.availabilityZone
  key_name  = var.keyName

  vpc_security_group_ids = [
    var.securityGroups
  ]

  /*user_data = file("install.sh")*/

  tags = {
    Name = var.instanceName
  }
}
