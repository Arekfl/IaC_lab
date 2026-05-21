terraform {
  # configure remote backend
  backend "s3" {
    region = "us-east-1"
    bucket = "mlops-course-agh-lab10-arkadiual-20260521-tfstate"
    key    = "lab10/iac_lab/terraform.tfstate"
    # if we would like to support locking, we need to provide a dynamodb table 
    # name, this might be helpful if we have multiple teams working on the same 
    # infrastructure
    # this is a good practice to avoid race conditions. The terraform will look if 
    # the lock is already taken and if it is, it will return an error until the 
    # lock is released.
    # dynamodb_table = "terraform-lock" 
    # you can omit this one for now.
  }
}