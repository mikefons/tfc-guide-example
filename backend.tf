terraform {
  backend "remote" {
    organization = "mfonseca-org"

    workspaces {
      name = "tfc-guide-example""
    }
  }
