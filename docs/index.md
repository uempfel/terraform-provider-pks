---
layout: ""
page_title: "Provider: PKS"
description: |-
  The PKS provider provides resources to interact with a PKS API.
---

# PKS Provider

The PKS provider provides resources to interact with a PKS API.

## Example Usage

```terraform
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
```