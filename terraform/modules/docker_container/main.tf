resource "docker_container" "app_container" {
  name  = var.container_name
  image = var.image_name

  ports {
    internal = var.app_port
    external = var.host_port
  }

  env = [
    for k, v in var.env_vars : "${k}=${v}"
  ]

  restart = "always"
}
