resource "pks_cluster" "this" {
  name = "my-cluster"
  external_hostname = "my-cluster.example.com"
  plan = "micro"
  num_nodes = 1
  net_profile_name = "default" # must exist before creation
  compute_profile_name = "default" # must exist before creation
}