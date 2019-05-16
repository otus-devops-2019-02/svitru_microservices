variable project {
  description = "Project ID"
}

variable region {
  description = "Region"

  # Значение по умолчанию
  default = "europe-west1"
}

variable disk_image {
  description = "Disk image"
}

variable zone {
  description = "zone"

  # Значение по умолчанию
  default = "europe-west1-b"
}

variable public_key_path {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}

variable count {
  description = "Count of instance"
}

