output "vm_name" {
  description = "Name of the test VM."
  value       = google_compute_instance.cloudme_test.name
}

output "vm_external_ip" {
  description = "External IPv4 address of the test VM."
  value       = google_compute_instance.cloudme_test.network_interface[0].access_config[0].nat_ip
}
