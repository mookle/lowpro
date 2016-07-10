# Lowpro

Quickly and easily setup various development tools on a local machine. Intended for use on OSX or Ubuntu systems.

## Usage

    curl -L https://raw.githubusercontent.com/mookle/lowpro/master/provision | bash

## What's happening here?

The `./provision` script installs some dependancies, clones this repo, then uses Ansible to ensure all the programs exist and are correctly configured.

### Installed programs

- homebrew (OSX only)
- git
- ansible
- curl
- ruby
- vim
- tmux
- tmuxinator
- sbt
- scala
- java (Ubuntu only)
- leiningen
- rust
- haskell
