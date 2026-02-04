terraform {
  backend "s3" {
    bucket         = "aws-eks-gitops-bucket"
    key            = "aws-eks-gitops-platform/infra/terraform/terraform.tfstate"
    region         = "us-east-1"

    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

