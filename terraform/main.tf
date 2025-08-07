terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.18"
    }
  }
  required_version = ">= 1.1.0"
}

provider "docker" {
  # Uses local Docker daemon by default
}

module "docker_container" {
  source = "./modules/docker_container"

  image_name     = var.image_name
  container_name = var.container_name
  app_port       = 3000
  host_port      = var.host_port
  env_vars       = var.env_vars

  providers = {
    docker = docker
  }
}
