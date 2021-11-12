module "rke" {
  source = "../.."

  node_public_ip = "192.168.236.121"
  node_username = "vagrant"
  ssh_private_key_pem = "~/.ssh/id_rsa"
}