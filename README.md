# homebrew-tap

Homebrew formulae for [aallbrig](https://github.com/aallbrig)'s tools.

## Install allbctl

```sh
brew tap aallbrig/tap
brew install allbctl
```

Or in one step:

```sh
brew install aallbrig/tap/allbctl
```

## What is allbctl?

[allbctl](https://aallbrig.github.io/allbctl) is a CLI tool for managing and inspecting your development environment — runtimes, databases, network, git repos, containers, and more.

```sh
allbctl status           # full system snapshot
allbctl status projects  # list git repos in ~/src
allbctl status runtimes  # show installed runtimes
allbctl bootstrap status # check dev environment setup
```

## Install treemand

```sh
brew tap aallbrig/tap
brew install treemand
```

Or in one step:

```sh
brew install aallbrig/tap/treemand
```

## What is treemand?

[treemand](https://aallbrig.github.io/treemand) visualizes any CLI tool's command hierarchy as a tree.

```sh
treemand git          # colored ASCII tree of git's commands
treemand -i aws       # interactive TUI for exploring aws
```
