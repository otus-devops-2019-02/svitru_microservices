terraform {
  # Версия terraform
  required_version = ">0.11"
}

provider "google" {
  # Версия провайдера
  version = "2.0.0"

  # ID проекта
  project = "${var.project}"

  region = "${var.region}"
}

resource "google_compute_instance" "instance" {
  name         = "instance-${count.index}"
  machine_type = "g1-small"
  zone         = "${var.zone}"
  count = 2

  boot_disk {
    initialize_params {
      image = "${var.disk_image}"
    }
  }

  network_interface {
    network = "default"

    access_config = {}
  }

}

