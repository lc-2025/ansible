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
```

For a single host:

```bash
ansible all -m gather_facts --limit <Host IP/name>
```

### Ping

```bash
ansible all -i inventory.yaml -m ping
```

Shorter version (by setting defaults via configuration file):

```bash
ansible all -m ping
```
