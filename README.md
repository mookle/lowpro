# Lowpro

Setting up a new dev environment is boring, and dotfiles only relieve some of that pain; this repo is an attempt to automate the entire process. Tested against my own macOS and Ubuntu setups, YMMV.

## Usage

To provision a box-fresh system:

```bash
curl -L https://raw.githubusercontent.com/mookle/lowpro/master/run | bash
```

After the initial run, you can re-provision at any point by invoking the relevant script directly:

```bash
$ bin/provision [{--tags | -t} <tag_name>] ...
```

## Configuration

Certain aspects of the process are configurable. Nothing too fancy, just something that allows for swapping between shells or language toolchains without needing to edit the playbooks/roles themselves. The current format/available options are:

```yaml
shell: # {zsh}
editor: # {neovim}
languages: # (rust: nightly|lein: |haskell: |java: |scala: |ruby: ) ...
extras:
  linux: # no options yet
  macos: # (watch|rectangle) ...
```

## What does `run` do?

The provisioning runner installs any system-specific dependancies, clones this repo, then uses Ansible (via `bin/provision`) to ensure everything is installed and correctly configured. "Everything" is broken up into several playbooks:

- **Shell**. Installs and configures an interactive shell. Configurable.

- **Core**. A (mostly) fixed set of roles, needed regardless of configuration/other playbooks. Exposes the `editor` param to configuration.

- **Languages**. Installs and configures [asdf](https://github.com/asdf-vm/asdf) to help manage toolchain installations. Exposes the complete language set (inc. optional version pinning) to configuration.

- **Extras**. Additional packages that require no config in order to setup. Configurable, with each `ansible_system` getting its own list. N.B. The actual config key != `ansible_system`

