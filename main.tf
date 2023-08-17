
terraform {
  cloud {
    organization = "liamcervante"
    workspaces {
      name = "cli-driven-workspace"
    }
  }

  required_providers {
    tfcoremock = {
      source = "hashicorp/tfcoremock"
    }
  }
}

provider "tfcoremock" {
    use_only_state = true
}

module "copy" {
  source  = "app.terraform.io/liamcervante/simple-copy/tfcoremock"
  version = "0.1.1"

  id = "77BE6E8A-F83F-4664-8353-10D25752B73F"
}

output "id" {
  value = module.copy.id
}
