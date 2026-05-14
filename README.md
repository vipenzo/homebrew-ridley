# Ridley Homebrew Tap

Homebrew tap for [Ridley](https://github.com/vipenzo/ridley) — 3D modeling with turtle graphics and signed distance fields.

## Install

```bash
brew tap vipenzo/ridley
brew install --cask ridley
```

After install, launch from Applications or:

```bash
open -a Ridley
```

## Upgrade

```bash
brew update
brew upgrade --cask ridley
```

## Uninstall

```bash
brew uninstall --cask ridley
brew untap vipenzo/ridley
```

The `--zap` flag also removes application support files and webview caches:

```bash
brew uninstall --cask --zap ridley
```

## Notes

Ridley is not currently code-signed with an Apple Developer ID. To avoid the macOS Gatekeeper "unidentified developer" prompt, the cask runs `xattr -dr com.apple.quarantine` on install. If you prefer to handle the prompt manually, install the DMG directly from the [releases page](https://github.com/vipenzo/ridley/releases) instead.
