#/etc/bin/bash

readonly PROVISION_DIR="$(HOME)/src/lowpro"

osx_setup() {
    playbook=osx.yml
    local homebrew='https://raw.githubusercontent.com/Homebrew/install/master/install'
    /usr/bin/ruby -e "$(curl -fsSL $homebrew)"
    brew install git ansible
}

linux_setup() {
    playbook=linux.yml
    sudo apt-get update -y
    sudo apt-get install git ansible -y
}

# Install prerequisites for provisioning
case $(uname) in
    Darwin) osx_setup;;
    Linux ) linux_setup;;
    *     ) echo 'Aborting: Unsupported operating system'
            exit;;
esac

# Clone provisioning repo
git clone https://github.com/mookle/lowpro $PROVISION_DIR
cd $PROVISION_DIR

# Setup localhost
ansible-playbook -i hosts --ask-become-pass $playbook
