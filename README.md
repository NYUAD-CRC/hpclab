# HPC Lab 
[![stability-wip](https://img.shields.io/badge/stability-wip-lightgrey.svg)](https://github.com/mkenney/software-guides/blob/master/STABILITY-BADGES.md#work-in-progress)

Spin up an LXC-based Slurm cluster using ansible.
 

## Tasks
- `init-cluster` : Prepare LXD project, create profiles, volumes and images...etc.
- `create-cluster`: Create cluster containers nodes and configure Slurm
- `destroy-cluster`: Destroy all cluster nodes.


## Configurations
### Hosts Configuration

```ini
# inventory/hosts

# Configure 'lxdhost' to match yours!
lxdhost ansible_host=mynyuad

# Login nodes
[hpclab_logins]
login-hpclab-[01:01].lxd

# Compute nodes
[hpclab_computes]
compute-hpclab-[01:04].lxd
```


### Slurm Configurations
```yaml
# inventory/group_vars/hpclab.yaml

#######################################################################
# Slurm configurations
#######################################################################
slurm_cgroup_config:
  ...
slurm_config:
  ...
slurm_create_user: yes
slurm_user:
  ...
slurm_nodes:
  ...
slurm_partitions:
  ...
```
