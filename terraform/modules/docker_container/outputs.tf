output "container_id" {
  description = "ID of the running Docker container"
  value       = docker_container.app_container.id
}
