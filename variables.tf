variable "project" {
  type        = string
  description = "GCP project ID"
}

variable "region" {
  type        = string
  description = "The main region where the resources are created"
}

variable "service" {
  type        = string
  description = "The name of the service"
}

variable "ingress" {
  type        = string
  description = "Provides the ingress settings for this Service"
}

variable "image" {
  type        = string
  description = "URL of the Container image in Google Container Registry or Google Artifact Registry"
}

variable "role" {
  type        = string
  description = "The role that should be applied"
}

variable "member" {
  type        = string
  description = "Identities that will be granted the privilege in role"
}
