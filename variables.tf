variable "node_public_ip" {
  type        = string
  description = "Public IP of compute node for Rancher cluster"
  default     = ""
}

variable "node_internal_ip" {
  type        = string
  description = "Internal IP of compute node for Rancher cluster"
  default     = ""
}

# Required
# This variable is useful to specify multiple nodes for the rancher cluster
# If this is null, the previous variables node_public_ip and
# node_internal_ip are used.
#
# Example:
# default = [
#   {
#     public_ip = "1.1.1.1",
#     private_ip = "1.1.1.1",
#     roles = ["etcd", "controlplane", "worker"]
#   },
#   {
#     public_ip = "2.2.2.2",
#     private_ip = "2.2.2.2",
#     roles = ["etcd", "controlplane", "worker"]
#   },
#   {
#     public_ip = "3.3.3.3",
#     private_ip = "3.3.3.3",
#     roles = ["etcd", "controlplane", "worker"]
#   }
# ]
#
variable "rancher_nodes" {
  type = list(object({
    public_ip = string
    private_ip = string
    roles = list(string)
  }))
  default = null
  description = "List of compute nodes for Rancher cluster"
}

variable "node_username" {
  type        = string
  description = "Username used for SSH access to the Rancher server cluster node"
}

variable "ssh_private_key_pem" {
  type        = string
  description = "Private key used for SSH access to the Rancher server cluster node(s)"
  default = "~/.ssh/id_rsa"
}

variable "kubernetes_version" {
  type        = string
  description = "Kubernetes version to use for the RKE cluster"
  default     = "v1.19.15-rancher1-1"
}

variable "private_registry_url" {
  type        = string
  description = "Specify the private registry where kubernetes images are hosted. Ex: artifactory.company.com/docker"
  default     = null
}

variable "private_registry_username" {
  type        = string
  description = "Specify private registry's username"
  default     = null
}

variable "private_registry_password" {
  type        = string
  description = "Specify private registry's password"
  default     = null
}

variable "cluster_name" {
  type = string
  description = "Name for the RKE cluster"
  default = "rke-demo"
}

variable "rke_kubeconfig_filename" {
  type = string
  description = "Kubeconfig output filename to use"
  default = "kube_config_cluster.yml"
}