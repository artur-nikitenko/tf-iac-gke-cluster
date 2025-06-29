variable "GOOGLE_PROJECT" {
  description = "Google Cloud project ID"
  type        = string
}

variable "GOOGLE_REGION" {
  description = "Google Cloud region"
  type        = string
  default     = "europe-west4"
}

variable "GKE_NUM_NODES" {
  description = "Number of nodes in the GKE cluster"
  type        = number
  default     = 2
}

variable "GKE_MACHINE_TYPE" {
  description = "Machine type for GKE nodes"
  type        = string
  default     = "g1-small" # або залиш пустим, якщо завжди з vars.tfvars
}

variable "GKE_DISK_SIZE" {
  description = "Size of the disk for each node (in GB)"
  type        = number
  default     = 30
}
