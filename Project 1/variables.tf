variable "machine_type" {
    description = "The machine type to create"
    default     = "f1-micro"
}

variable "boot_image" {
    description = "The image from which to initialize the boot disk."
    default     = "debian-cloud/debian-9"
}

variable "disk_type" {
    description = "The GCE disk type"
    default     = "pd-standard"
}

variable "device_name" {
    description = "Name with which attached disk will be accessible. On the instance, this device will be /dev/disk/by-id/google-{{device_name}}"
    default     = "learn"
}

variable "network" {
    description = "The name or self_link of the network to attach this interface to"
    default     = "default"
}

variable "tags" {
    description = "A list of tags to attach to the instance"
    type        = list
    default     = ["f1", "trial"]
}

variable "machine_labels" {
    description = "A map of key/value label pairs to assign to the instance"
    type        = map
    default     = {
        purpose = "learning"
        owner   = "shashank"
    }
}