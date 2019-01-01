# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/f2a764ef944b1080be64bd88dca9a1d80130c558/Formula/python.rb
brew install mas
pip3 install ansible

# ansible
ansible-galaxy install geerlingguy.mas
sudo mkdir /etc/ansible
curl https://init51.f1nn.com/mac/ansible.hosts > ansible.hosts
sudo mv ansible.hosts /etc/ansible/hosts
mkdir ~/tmp
curl https://init51.f1nn.com/mac/main.yml > ~/tmp/main.yml
ansible-playbook ~/tmp/main.yml

