resource "aws_security_group" "sg" {
  name        = "${var.name}-sg"
  description = "Allow the internet traffic"
#   vpc_id      = data.terraform_remote_state.s3_backend.outputs.VPC_ID
  tags = {
    Name = "${var.name}-sg"
  }
  ingress {
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = var.tcp_protocol
    cidr_blocks = var.my_ip_address
  }

  ingress {
    from_port   = var.http_port
    to_port     = var.http_port
    protocol    = var.tcp_protocol
    cidr_blocks = var.internet_open_ip
  }

  ingress {
    from_port   = var.https_port
    to_port     = var.https_port
    protocol    = var.tcp_protocol
    cidr_blocks = var.internet_open_ip
  }

  egress {
    from_port   = var.wildcard_port
    to_port     = var.wildcard_port
    protocol    = var.minus_one_protocol_code
    cidr_blocks = var.internet_open_ip
  }
}

# keypair 
data "aws_key_pair" "my_key" {
  key_name = var.keypair
}

resource "aws_instance" "ec2" {
  depends_on = [ aws_security_group.sg ]
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = data.aws_key_pair.my_key.key_name
  associate_public_ip_address = true
  user_data_base64 = "${var.user_data_base64}" 

  tags = {
    Name          = "${var.name}-linuShellScripting"
    Project       = var.project
    Folder        = var.folder
    ManagedBy     = var.managedby
    Owner         = var.owner
    Administrator = var.administrator
  }
}



