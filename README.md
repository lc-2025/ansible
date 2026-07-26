# Getting Started with Ansible

Ansible course

## Ad-Hoc commands

On Terminal:

### Hosts

To get the list of all available hosts:

```bash
ansible all --list-hosts
```

To get all the hosts information:

```bash
ansible all -m gather_facts
# For a single host:
ansible all -m gather_facts --limit <Host IP/name>
```

To get access to a host package manager:

```bash
# I.e. Update cache by elevating the privileges and asking for password
ansible all -m apt -a update_cache=true --become --ask-become-password

# I.e. Install a package in the same way
ansible all -m apt -a name=<Package name> --become --ask-become-password

# I.e. Install a package specific version in the same way
ansible all -m apt -a "name=<Package name> state=<Version>" --become --ask-become-password

# I.e. Upgrade dist in the same way
ansible all -m apt -a "upgrade=dist" --become --ask-become-password
```

### Ping

```bash
ansible all -i inventory.yaml -m ping
```

Shorter version (by setting defaults via configuration file):

```bash
ansible all -m ping
```

## Playbooks

To run a playbook with password:

```bash
# Privileges are elevated by specific flag inside the playbook
ansible-playbook --ask-become-pass <Playbook file>
```
