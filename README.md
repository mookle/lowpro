# Lowpro

Setting up a new dev environment is boring, and dotfiles only relieve some of that pain; this repo is an attempt to automate the entire process. Only tested against Pop_OS!, YMMV.

## Usage

To provision a box-fresh system:

```bash
curl -L https://gitlab.com/mookle/lowpro/-/raw/master/run | bash
```

After the initial run, you can re-provision at any point by invoking the relevant script directly:

```bash
$ bin/provision [{--tags | -t} <tag_name>] ... [{--extra_vars | -e} <key=value>] ...
```

## Configuration

Certain aspects of the installation process are configurable. Nothing too fancy, just something that allows for swapping between shells or language toolchains without needing to edit the playbooks/roles themselves. The current format and available options are:

```yaml
shell: # [fish]
editor: # [neovim]
languages: # [rust: nightly/beta/stable|clojure: |haskell: |java: |scala: |ruby: ] ...
extras:
  linux: # [curl]
  macos: # [curl|watch|rectangle] ...
```

N.B. This repo does do _some_ configuration of the software it's installing, but anything non-trivial is handled by https://gitlab.com/mookle/dotfiles 

---

## What does `run` do?

The provisioning runner installs system dependancies, clones this repo, then uses Ansible (via `bin/provision`) to ensure everything is installed correctly. "Everything" is broken up into several playbooks:

- _shell.yml_. Installs and configures an interactive shell. Configurable.
- _core.yml_. A (mostly) fixed set of roles, needed regardless of configuration/other playbooks. Exposes the `editor` param to configuration.
- _languages.yml_. Installs and configures [asdf](https://github.com/asdf-vm/asdf) to help manage toolchain installations. Exposes the complete language set (inc. optional version pinning) to configuration.
- _extras.yml_. Additional packages that require only a single installation task. Configurable, with each `ansible_system` getting its own list. N.B. The actual config key != `ansible_system`

