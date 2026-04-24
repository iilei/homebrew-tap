# homebrew-tap

Homebrew formulae for [iilei](https://github.com/iilei) projects.

## Usage

```sh
brew tap iilei/tap
brew install gitsnitch
```

## Formulae

### gitsnitch

A Git commit history linter written in Rust.

**Source:** [github.com/iilei/gitsnitch](https://github.com/iilei/gitsnitch)

```sh
brew install gitsnitch
```

After installation, verify with:

```sh
gitsnitch --version
```

## Keeping formulae up to date

Formulae are updated automatically via a GitHub Actions workflow ([`.github/workflows/update-formula.yml`](.github/workflows/update-formula.yml)) triggered by a `repository_dispatch` event of type `formula-update`.

When a new release of a project is published, the release workflow in that repository fires the dispatch event with the new `version` and per-platform `sha256` checksums as `client_payload`. The workflow in this tap repo then updates the formula file and commits the change automatically.

### Dispatch payload shape

```json
{
  "event_type": "formula-update",
  "client_payload": {
    "version": "0.3.0",
    "sha256_macos_universal2": "<sha256>",
    "sha256_linux_x86_64": "<sha256>",
    "sha256_linux_arm64": "<sha256>",
    "sha256_linux_armv7": "<sha256>"
  }
}
```
