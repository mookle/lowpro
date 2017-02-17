# Lowpro

Basic provisioning for my development environment. Intended for use on OSX or Ubuntu systems.

## Usage

    curl -L https://raw.githubusercontent.com/mookle/lowpro/master/provision | bash

## What's happening here?

The `./provision` script installs some platform-specific dependancies, clones this repo, then uses Ansible to ensure all the programs exist and are correctly configured. The installed / configured programs are:

### Languages
- leiningen
- scala
- sbt
- rust
- haskell
- java
- ruby

### Editors
- vim
- nvim

### Version Control
- git
- ghi (https://github.com/stephencelis/ghi)

### Infrastructure / provisioning
- ansible
- homebrew
- vagrant
- virtualbox
- bash

### Utilities
- curl
- ssh
- tmux
- tmuxinator (https://github.com/tmuxinator/tmuxinator)
- watch
