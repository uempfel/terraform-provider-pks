terraform {
  required_providers {
    pks = {
      source  = "terraform.uempfel.de/uempfel/pks"
      version = ">= 0.0.1"
    }
  }
}

provider "pks" {
  hostname = "api.pks.example.com"
  skip_ssl_validation = true
  client_id = "my_client_id"
  client_secret = "my_client_secret"
}
