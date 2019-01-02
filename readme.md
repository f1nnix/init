# init

Ansible roles to bootstrap macOS and Linux workstation. Work in progress.

**Kudos:** heavily rewritten with Jeff Geerling's approarch [mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook).
 

## Run

```
sh mac/init.sh  # installs brew, python 3.6.5_1 and ansible
ansible-galaxy install -r mac/requirements.yml
ansible-playbook mac/main.yml
```

## Why

* **Short:** reproducible envs are awesome;
* **Long:** [Using Ansible for provisioning OS and software](https://xakep.ru/2018/09/12/ansible-deploy/) (Russian).

## LICENSE

[WTFPL](https://en.wikipedia.org/wiki/WTFPL) :).