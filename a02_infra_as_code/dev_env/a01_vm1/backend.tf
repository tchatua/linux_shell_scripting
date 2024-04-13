terraform {
  backend "s3" {
    bucket         = "lea-07192023-terraform-state"
    key            = "linuxShelScriptingLab/vm1/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "Lea_Table"
  }
}