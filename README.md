# Appit Studio Apps

A [Homebrew tap](https://docs.brew.sh/Taps) for macOS apps by [Appit Studio](https://appitstudio.com/).

## Install

```sh
brew install --cask appitstudio/apps/extrabar
```

That taps this repository, trusts the cask and installs the app in one step.

**Use the fully-qualified name.** Homebrew requires third-party taps to be
trusted before it will load anything from them, and naming the cask in full is
what grants that trust. Installing by bare token after tapping fails with
`Refusing to load cask ... from untrusted tap`. If you prefer to tap first, trust
it explicitly:

```sh
brew tap appitstudio/apps
brew trust appitstudio/apps
brew install --cask extrabar
```

Or, in a `brew bundle` `Brewfile` (run `brew trust appitstudio/apps` once first):

```ruby
tap "appitstudio/apps"
cask "extrabar"
```

See [Homebrew's tap trust documentation](https://docs.brew.sh/Tap-Trust) for background.

## Casks

| Cask | App | Description |
| ---- | --- | ----------- |
| `extrabar` | [ExtraBar](https://extrabar.app/) | Customisable menu bar with shortcuts, quick actions and deep links |

## Upgrade

```sh
brew upgrade --cask extrabar
```

ExtraBar also updates itself via Sparkle, so `brew upgrade` is only needed if you
prefer Homebrew to manage the version.

## Uninstall

```sh
brew uninstall --cask extrabar
```

To also remove preferences and application data:

```sh
brew uninstall --zap --cask extrabar
```

## Other Appit Studio apps

[DockFlow](https://dockflow.appitstudio.com/) and [ExtraDock](https://extradock.app/)
are in the official `homebrew/cask` tap, so they need no tap:

```sh
brew install --cask dockflow
brew install --cask extradock
```

## Reporting issues

For problems with the cask itself (installation, uninstallation, wrong version),
open an issue here. For problems with an app, use that app's own support channel.
