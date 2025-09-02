resource "local_sensitive_file" "kubeconfig-tkb" {
  filename        = pathexpand("~/.kube/config-tkb")
  content_base64  = linode_lke_cluster.tkb.kubeconfig
  file_permission = "0600"
}
