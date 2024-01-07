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
    resource_group_name   = "terraform-storage-rg"
    storage_account_name  = "terbackend88"
    container_name        = "tfstateadevops"
    key                   = "terraform.tfstate"
  } 
}

# Provider Block
# test commit
provider "azurerm" {
  skip_provider_registration = "true"

  features {}

  subscription_id = "079d5af7-cb55-4685-b72f-487ba3b042fe"
  tenant_id       = "1406e2db-9389-47ad-aa89-202355b4c21d"
  client_id       = "642aa359-da50-4883-b454-848ff9306059"
  client_secret   = "JS~8Q~xixtQiDgFR47Z2MNtHcC6Y.DlX9JzptdBX"

}







