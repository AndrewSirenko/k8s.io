/*
Copyright 2023 The Kubernetes Authors.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

aws_account_id = "054318140392"

eks_cluster_viewers = [
  "koray",
  "pkprzekwas",
  "wozniakjan",
  "xmudrii"
]

eks_cluster_admins = [
  "koray",
  "pkprzekwas",
  "wozniakjan",
  "xmudrii"
]

cluster_name               = "prow-canary-cluster"
cluster_version            = "1.28"
cluster_autoscaler_version = "v1.28.0"

node_group_version_us_east_2a = "1.28"
node_group_version_us_east_2b = "1.28"
node_group_version_us_east_2c = "1.28"
node_group_version_stable     = "1.28"

node_instance_types_us_east_2a = ["r5ad.2xlarge"]
node_instance_types_us_east_2b = ["r5ad.xlarge"]
node_instance_types_us_east_2c = ["r5ad.xlarge"]

node_instance_types_stable = ["r5ad.xlarge"]

node_min_size_us_east_2a     = 1
node_max_size_us_east_2a     = 1
node_desired_size_us_east_2a = 1

# cluster-autoscaler has been manually disabled for this ASG because we don't need that many nodes in the canary cluster
node_min_size_us_east_2b     = 0
node_max_size_us_east_2b     = 1
node_desired_size_us_east_2b = 0

# cluster-autoscaler has been manually disabled for this ASG because we don't need that many nodes in the canary cluster
node_min_size_us_east_2c     = 0
node_max_size_us_east_2c     = 1
node_desired_size_us_east_2c = 0

node_desired_size_stable = 1

node_taints_stable = [
  {
    key    = "node-group"
    value  = "stable"
    effect = "NO_SCHEDULE"
  }
]
node_labels_stable = {
  "node-group" = "stable"
}

node_volume_size = 100

node_max_unavailable_percentage = 100 # To ease testing
