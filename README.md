# Homebrew Tap for DeepSeek Harness Desktop

A [Homebrew](https://brew.sh) tap for the macOS builds of
[DeepSeek Harness Desktop](https://github.com/dsh-tauri/deepseek-harness-desktop).

## Install

Install in one command (this taps `dsh-tauri/desktop` and installs the `deepseek-harness` cask for you):

```bash
brew install dsh-tauri/desktop/deepseek-harness
```

Or add the tap first, then install:

```bash
brew tap dsh-tauri/desktop
brew install --cask deepseek-harness
```

> **Note on the tap name:** this repository is named `dsh-tauri/homebrew-desktop`,
> which Homebrew shortens to the tap `dsh-tauri/desktop`. The one-liner above uses
> that shortcut, so you don't have to type the `homebrew-` prefix.
> `brew install dsh-tauri/homebrew-desktop` (without a formula/cask name) is **not** a
> valid install command in Homebrew — it needs the trailing cask name.

## Requirements

- macOS 10.15 (Catalina) or newer.
- The DMG is Developer-ID signed and notarized by the upstream build pipeline, so
  Gatekeeper will trust it.

## Updating

The `Casks/deepseek-harness.rb` cask is kept in sync automatically by the
[`update-cask`](.github/workflows/update-cask.yml) workflow, which watches the
upstream releases for new stable versions, recomputes the SHA256 for both
architectures, and commits the updated cask. It runs on a daily schedule; you can
also trigger a run manually from the **Actions** tab.
