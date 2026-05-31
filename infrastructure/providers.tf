terraform {
  required_version = ">= 1.10"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.47"
    }
  }

  backend "s3" {
    bucket         = "turkia-terraform-state"
    key            = "portfolio/terraform.tfstate"
    region         = "eu-west-1"
    encrypt      = true
    use_lockfile = true
  }
}

provider "aws" {
  region = var.region
}

# ACM certificates used by CloudFront must exist in us-east-1
provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"
}
