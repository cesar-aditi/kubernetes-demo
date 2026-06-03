variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "southamerica-east1"   # FIX: closer to LATAM (was us-east1)
}

variable "cluster_name" {
  description = "GKE cluster name"
  type        = string
  default     = "prod-cluster"
}

variable "environment" {
  description = "Environment label"
  type        = string
  default     = "production"
}

variable "authorized_cidr" {
  description = "CIDR allowed to reach the GKE API server. Must be a specific IP range (e.g. your VPN/office CIDR). Do NOT use 0.0.0.0/0 in production — this exposes the control plane to the internet."
  type        = string
  # No default: callers must explicitly provide a trusted CIDR.
  # Example: "203.0.113.0/24" (your corporate VPN egress range)
}

variable "spot_min_nodes" {
  description = "Minimum nodes in spot pool per zone"
  type        = number
  default     = 1
}

variable "spot_max_nodes" {
  description = "Maximum nodes in spot pool per zone"
  type        = number
  default     = 4
}
