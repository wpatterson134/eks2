provider "aws" {

  region = "us-east-1"
  access_key ="AKIAUCJWTGCYPHR2V2ET"
  secret_key ="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"

}

variable "cluster_name" {
  default = "ist"
}

variable "cluster_version" {
  default = "1.25"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.14.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.6.0"
    }
  }
}
provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
