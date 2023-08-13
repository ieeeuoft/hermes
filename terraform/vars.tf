variable "do_token" {
	type = string
}

variable "region" {
  type = string
  default = "TOR1"
}

# Droplet Config Vars

variable "droplet_name" {
  type = string
}

variable "droplet_size" { 
  type = string
  default = "s-1vcpu-1gb" # Smallest Droplet
}

variable "droplet_image" {
  type = string
  default = "ubuntu-18-04-x64"
}