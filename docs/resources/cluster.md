---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "pks_cluster Resource - terraform-provider-pks"
subcategory: ""
description: |-
  
---

# pks_cluster (Resource)



## Example Usage

```terraform
resource "pks_cluster" "this" {
  name = "my-cluster"
  external_hostname = "my-cluster.example.com"
  plan = "micro"
  num_nodes = 1
  net_profile_name = "default" # must exist before creation
  compute_profile_name = "default" # must exist before creation
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- **external_hostname** (String) Hostname that will be assigned to the Kubernetes API
- **name** (String) Cluster Name
- **plan** (String) Plan used to create cluster, will determine master size, default worker set and other cluster settings

### Optional

- **compute_profile_name** (String) Compute profile used to create cluster
- **id** (String) The ID of this resource.
- **net_profile_name** (String) Network profile used to create cluster
- **num_nodes** (Number) Number of worker nodes, overriding plan-specified default

### Read-Only

- **k8s_version** (String)
- **last_action** (String) Last action performed on the cluster through PKS, one of CREATE, UPDATE, DELETE
- **last_action_description** (String)
- **last_action_state** (String) One of: in progress, succeeded, failed
- **master_ips** (List of String) IPs assigned to the master VMs
- **pks_version** (String)
- **uuid** (String) Unique ID for the cluster, use this to lookup the cluster with BOSH

## Import

Import is supported using the following syntax:

```shell
terraform import pks_cluster.example my-cluster
```
