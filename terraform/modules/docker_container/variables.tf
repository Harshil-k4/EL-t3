variable "image_name" {
  description = "Docker image name to use"
  type        = string
}

variable "container_name" {
  description = "Docker container name"
  type        = string
}

variable "app_port" {
  description = "Port the application exposes inside the container"
  type        = number
  default     = 3000
}

variable "host_port" {
  description = "Port on host to bind to container's app port"
  type        = number
  default     = 3000
}

variable "env_vars" {
  description = "Map of environment variables for the container"
  type        = map(string)
  default     = {}
}
