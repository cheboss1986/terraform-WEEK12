
resource "aws_instance" "webdemo" {
  ami                         = "ami-0230bd60aa48260c6"
  associate_public_ip_address = true
  availability_zone           = "us-east-1c"
  cpu_core_count              = 1
  instance_type               = "t2.micro"
  key_name                    = "ec2key"
  monitoring                  = false
  secondary_private_ips       = []
  security_groups             = ["launch-wizard-2"]
  source_dest_check           = true
  subnet_id                   = "subnet-0c6609ed6956e730d"
  tags = {
    Name = "Imported server"
    env  = "dev"
    Team = "devops"
  }

}
