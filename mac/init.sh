# brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew install mas

# ansible
brew install ansible
sudo mkdir -p /etc/ansible
sudo cp mac/files/ansible.hosts /etc/ansible/hosts

# sing-in to App Store
open -g -W /Applications/App\ Store.app
