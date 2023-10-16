variable "prefix" {
  type    = string
  default = "raad"
}

variable "project" {
  type    = string
  default = "recipe-app-api-devops"
}

variable "contact" {
  type    = string
  default = "bebofit@aucegypt.edu"
}

variable "server_name" {
  default = "HelloWorldServer"
}

variable "ami" {
  default = "ami-0323c3dd2da7fb37d"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "db_username" {
  description = "Username for RDS postgres instance"
}

variable "db_password" {
  description = "Password for RDS postgres instance"
}

variable "bastion_key_name" {
  default = "recipe-app-api-devops-bastion"
}

variable "ecr_image_api" {
  description = "ECR Image for API"
  default     = "676343843741.dkr.ecr.eu-west-2.amazonaws.com/recipe-app-api-devops:latest"
}

variable "ecr_image_proxy" {
  description = "ECR Image for API"
  default     = "676343843741.dkr.ecr.eu-west-2.amazonaws.com/recipe-app-api-proxy:latest"
}

variable "django_secret_key" {
  description = "Secret key for Django app"
}

variable "dns_zone_name" {
  description = "Domain name"
  default     = "<domain name>"
}

variable "subdomain" {
  description = "Subdomain per environment"
  type        = map(string)
  default = {
    production = "api"
    staging    = "api.staging"
    dev        = "api.dev"
  }
}
