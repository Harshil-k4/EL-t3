variable "image_name" {
  description = "Docker image name from Docker Hub"
  type        = string
  default     = "harshilkumar/el-t2-node-app"
}

variable "container_name" {
  description = "Name of the Docker container"
  type        = string
  default     = "el-t3-node-container"
}

variable "host_port" {
  description = "Host port to map to the container's exposed port"
  type        = number
  default     = 3000
}

variable "env_vars" {
  description = "Environment variables map for the container"
  type        = map(string)
  default     = {
    NODE_ENV = "production"
  }
}
