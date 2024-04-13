module "vm1" {
  source = "../../modules/a01_ec2/"

  # tags
  name          = "vm1"
  project       = "Linux Shell scripting"
  folder        = "d05_Udemy/d10_Shell_Scripting_Project_Based/linux_shell_scripting/a02_infra_as_code/dev_env/a01_vm1"
  managedby     = "Terraform"
  owner         = "Arristide Tchatua"
  administrator = "tchattua@gmail.com"

  # SG 
  my_ip_address           = ["108.24.142.74/32"]
  internet_open_ip        = ["0.0.0.0/0"]
  ssh_port                = 22
  tcp_protocol            = "tcp"
  minus_one_protocol_code = "-1"
  http_port               = 80
  https_port              = 443
  wildcard_port           = 0

  # ec2 
  keypair          = "terraform_dwp"
  ami              = "ami-0a699202e5027c10d"
  instance_type    = "t2.micro"
  user_data_base64 = filebase64("user_data_script.sh")
}

