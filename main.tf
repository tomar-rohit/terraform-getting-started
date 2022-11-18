provider "google" {
project = "dms-testing-hcl"
region = "us-west1"
}

resource "google_compute_instance" "myvm" {
name = "myvm-dev"
zone = "us-west1-c"
boot_disk {
initialize_params {
  image = "debian-cloud/debian-9"
  size = "10"
}
}
machine_type = "f1-micro" 
network_interface {
network = "default"
}
}
