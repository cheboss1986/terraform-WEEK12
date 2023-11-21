module "name" {
    source = "../modules"
  ami = "ami-05c13eab67c5d8861"
  region = "us-east-1"
  instance_type = "t3.small" 
  name = "DEV-from module" 
  }
output "public_ip" {
  value = module.name
  
}

