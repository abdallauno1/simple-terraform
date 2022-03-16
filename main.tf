provider "aws" {
  /* 
     -- access key & secret key --
  access_key = TF_VAR_AWS_ACCESS_KEY_ID   
  secret_key = TF_VAR_AWS_SECRET_ACCESS_KEY
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
