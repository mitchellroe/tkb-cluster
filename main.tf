terraform {
  required_providers {
    linode = {
      source = "linode/linode"
    }
  }
}

provider "linode" {
  token = local.envs["LINODE_TOKEN"]
}

resource "linode_lke_cluster" "tkb" {
  label       = "tkb"
  k8s_version = "1.33"
  region      = "eu-central"

  pool {
    type  = "g6-standard-1"
    count = 3
  }
}
