terraform {
  backend "s3" {
    bucket = "super-mario-tf-kubernetes-project123456" # Replace with your actual S3 bucket name
    key    = "EKS/terraform.tfstate"
    region = "ap-south-1"
    profile = "eks"
  }
}
