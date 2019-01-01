# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew install python3 mas
pip3 install ansible

# ansible
ansible-galaxy install geerlingguy.mas
sudo mkdir /etc/ansible
sudo curl https://init51.f1nn.com/mac/ansible.hosts > /etc/ansible/hosts
mkdir ~/tmp
curl https://init51.f1nn.com/mac/main.yml > ~/tmp/main.yml
ansible-playbook ~/tmp/main.yml

