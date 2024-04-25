# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0" 
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.0"
    }
    null = {
      source = "hashicorp/null"
      version = ">= 3.0"
    }    
  }
# Terraform State Storage to Azure Storage Container
  backend "azurerm" {
    resource_group_name   = "NetworkWatcherRG"
    storage_account_name  = "terraformstage1211"
    container_name        = "tfstatefiles"
    key                   = "tfstate"
  }  
}

# Provider Block
provider "azurerm" {
 features {}          
}