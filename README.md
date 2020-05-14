# gtr Plugin for ZSH

> gtr = git tag release

Allows fast tagging of a release in git using the tag name release-YYYY-MM-DD-HH-MM and headline "Release YYYY-MM-DD HH:MM".
Git allows you to edit the headline and add a description using your default editor before
the tag will be signed and immediatily pushed to the primary remote repository.

## Repository clones

The original repository will be stored on [GitHub](https://github.com/Zocker1999NET/zsh-gtr).
You can use the original reopsitory if you want to use GitHub.
Also issues and pull requests will be collected there for convenience.

This repository will be cloned to my own server.
You can use the [clone](https://git.banananet.work/zsh-plugins/gtr) instead of this repository
if you want to avoid use GitHub.

## Installation

### Prerequisites

- `git`
- `gpg`

### zsh (without plugin support)

1. Clone project
2. Add following line to your `.zshrc`:
```sh
SOURCE "path/to/repo/gtr.plugin.zsh"
```

### oh-my-zsh

1. Clone project into `~/.oh-my-zsh/custom/plugins/gtr`
2. Add `gtr` to your plugin list
```sh
plugins=(… gtr …)
```

### Antigen

1. Add following line to your `.zshrc`:
```sh
antigen bundle Zocker1999NET/zsh-gtr # GitHub if default repository unchanged
antigen bundle https://git.banananet.work/zsh-plugins/gtr # Own Server
```

or

1. Add the repository to your plugin list
```sh
antigen bundles <<EOBUNDLES
  …
  Zocker1999NET/zsh-gtr # GitHub if default repository unchanged
  https://git.banananet.work/zsh-plugins/gtr # Own Server
  …
EOBUNDLES
```

### Antibody

1. Add following line to your `.zshrc`:
```sh
antibody bundle Zocker1999NET/zsh-gtr # GitHub if default repository unchanged
antibody bundle https://git.banananet.work/zsh-plugins/gtr # Own Server
```

or

1. Add the repository to your plugin list
```sh
antibody bundles <<EOBUNDLES
  …
  Zocker1999NET/zsh-gtr # GitHub if default repository unchanged
  https://git.banananet.work/zsh-plugins/gtr # Own Server
  …
EOBUNDLES
```

## Usage

```sh
gtr
```

### Practical usage

I use signed tags with the prefix `release-` as convenient update solution for applications and ressources on my server.
Every night my servers look for new tags in given remote repositories.
If a newer release tag is provided,
the signature of the release tag will be checked against my GPG key,
and only if the signature is considered valid,
the server checkouts the new release tag and may runs hooks to auto update applications and servers.

## License

This plugin is licensed under WTFPL.
Do the fuck you want to with this plugin,
but please contribute to this plugin if you have made any improvements which could be useful for others.

## Contribute

If you find any issue, report it
or fix it yourself and create a pull request.
