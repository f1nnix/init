# init

Ansible roles to bootstrap macOS and Linux workstation.

[Using Ansible for provisioning OS and software](https://xakep.ru/2018/09/12/ansible-deploy/) (Russian).

# Install brew

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew update
    brew install mas

# Install ansible

    brew install ansible
    sudo mkdir -p /etc/ansible
    sudo cp mac/files/ansible.hosts /etc/ansible/hosts

# Sing-in to App Store

    # May not work on Catalina
    open -g -W /Applications/App\ Store.app

## Run

    ansible-galaxy install -r mac/requirements.yml
    ansible-playbook mac/main.yml -K

## LICENSE

Do, what you want :).
