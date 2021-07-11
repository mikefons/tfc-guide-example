terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "mfonseca-org"

    workspaces {
      name = "tfc-guide-example"
    }
  }
}