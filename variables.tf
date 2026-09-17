variable "project_id" {
  description = "GCP project ID where the test VM will be created."
  type        = string
}

variable "region" {
  description = "GCP region for the VM."
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "GCP zone for the VM."
  type        = string
  default     = "us-central1-a"
}

variable "vm_name" {
  description = "Name of the test VM."
  type        = string
  default     = "cloudme-test"
}

variable "machine_type" {
  description = "Compute Engine machine type."
  type        = string
  default     = "e2-micro"
}

variable "boot_image" {
  description = "Boot disk image in project/image format."
  type        = string
  default     = "ubuntu-os-cloud/ubuntu-2404-lts-amd64"
}
