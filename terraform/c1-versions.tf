# Terroform Black
terraform {
    required_version = "~> v1.1.8"    # Allow 1.1.9,1.1.10.. but Deny 1.2.xxx (~>only point to the last part of the version)
    required_providers {
        aws = {     # This aws is the name from local provider which is in the provider block below
            source = "hashicorp/aws"
            version = "~> 4.9.0"
        }
    }
}

# Provider Block
provider "aws" {
    profile = "your_own_credential"   # Use your own credentials
    region = var.aws_region
}





