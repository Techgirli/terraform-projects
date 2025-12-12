terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "0.71.0"
    }
  }
}

provider "local" {
}
