terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.17"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.4"
    }
  }


  backend "s3" {
    bucket = "config-bucket-592406580033"
    key    = "arn:aws:s3:::config-bucket-592406580033"
    region = "us-east-1"
    #dynamodb_table = "terraform-studies-db"
    #encrypt        = true
  }

  #backend "http" {
  #address        = "http://localhost:5000/terraform_state/4cdd0c76-d78b-11e9-9bea-db9cd8374f3a"
  #lock_address   = "http://localhost:5000/terraform_lock/4cdd0c76-d78b-11e9-9bea-db9cd8374f3a"
  #lock_method    = "PUT"
  #unlock_address = "http://localhost:5000/terraform_lock/4cdd0c76-d78b-11e9-9bea-db9cd8374f3a"
  #unlock_method  = "DELETE"
  #}

  #cloud {
  #organization = "TestLocalTerraform"

  #workspaces {
  #name = "localstudiesterraform"
  #}
  #}
}
