# brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/f2a764ef944b1080be64bd88dca9a1d80130c558/Formula/python.rb
brew install mas

# ansible
pip3 install ansible
ansible-galaxy install geerlingguy.mas
sudo mkdir -p /etc/ansible
sudo mv mac/files/ansible.hosts /etc/ansible/hosts

# sing-in to App Store
open -g -W /Applications/App\ Store.app