 terraform {
       backend "remote" {
         # The name of your Terraform Cloud organization.
         organization = "hpinc-global-preprod"

         # The name of the Terraform Cloud workspace to store Terraform state files in.
         workspaces {
           name = "PranayTest"
         }
       }
     }
terraform {
  cloud {
    organization = "hpinc-global-preprod"
    workspaces {
      tags = [ var.tag ]
 
    }
  }
  required_providers {
    genesyscloud = {
      source = "MyPureCloud/genesyscloud"
      version = "1.24.0"
    }
  }
}
 
provider "genesyscloud" {
  oauthclient_id     = "ea75ed77-b20d-4160-b27a-420daf6c36d0"
  oauthclient_secret = "PKu_tJ9wMDIWOx-qemP8XGrhtc1KDnauL9VRp-8qkC0"
  aws_region         = "eu-central-1"
}
