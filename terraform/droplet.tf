# IEEE Main server ssh key
data "digitalocean_ssh_key" "ieee-server01" {
  name = "ieee-server01"
}

resource "digitalocean_droplet" "hackathon_droplet" {
  image      = var.droplet_image
  name       = var.droplet_name
  region     = var.region
  size       = var.droplet_size
  ssh_keys   = [data.digitalocean_ssh_key.ieee-server01.id]
}

output "droplet_ip_address" {
  value = digitalocean_droplet.hackathon_droplet.ipv4_address
}