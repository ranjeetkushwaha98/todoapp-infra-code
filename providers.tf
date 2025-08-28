terraform {
  backend "azurerm" {
    sas_token            = "sp=rwdl&st=2025-08-28T05:52:58Z&se=2025-09-25T14:07:58Z&sv=2024-11-04&sr=c&sig=t2sdi%2FIYcttW%2FL7ya3LhyUMmwRqXCGDJ4F2vnbCv7Oc%3D"  # Can also be set via `ARM_SAS_TOKEN` environment variable.
    storage_account_name = "dontdeletethis"                                 # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "youcanuseit"                                  # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "terraform.tfstate"                 # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
}

provider "azurerm" {
  features {}
    subscription_id = var.subscription_id
}