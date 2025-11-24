terraform {
  backend "s3" {
    bucket = "new-s3-bukkkbalti123" # Replace with your actual S3 bucket name
    key    = "EKS/terraform.tfstate"
    region = "ap-south-1"
    profile = "eks"
  }
}
