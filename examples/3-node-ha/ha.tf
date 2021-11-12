module "rke" {
  source = "../.."

  rancher_nodes = [
    {
      public_ip = "192.168.236.121",
      private_ip = "192.168.236.121",
      roles = ["etcd", "controlplane", "worker"]
    },
    {
      public_ip = "192.168.236.122",
      private_ip = "192.168.236.122",
      roles = ["etcd", "controlplane", "worker"]
    },
    {
      public_ip = "192.168.236.123",
      private_ip = "192.168.236.123",
      roles = ["etcd", "controlplane", "worker"]
    }
  ]
  node_username = "vagrant"
  ssh_private_key_pem = "~/.ssh/id_rsa"
}