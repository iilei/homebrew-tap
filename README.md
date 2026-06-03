# homebrew-tap

My projects Homebrew formulae.

## Usage

```sh
brew install iilei/tap/gitsnitch
brew install iilei/tap/proquint
```

## Formulae

### gitsnitch 🗡️🦆

[![codecov](https://codecov.io/gh/iilei/gitsnitch/branch/master/graph/badge.svg?token=TZ71OWC0AZ)](https://codecov.io/gh/iilei/gitsnitch)
[![microsite](https://img.shields.io/badge/iilei.github.io/gitsnitch-blue)](https://iilei.github.io/gitsnitch)

**Lints your Git commit history against a declarative ruleset** &ndash; locally as a pre-commit/pre-push hook, or in any CI/CD pipeline.

Think of it as a linter, but for commit hygiene — enforced consistently across every author and every environment.

**Source:** [github.com/iilei/gitsnitch](https://github.com/iilei/gitsnitch)

```sh
brew install gitsnitch
```

After installation, verify with:

```sh
gitsnitch --version
```

### proquint

[![codecov](https://codecov.io/gh/iilei/proquint/branch/master/graph/badge.svg)](https://codecov.io/gh/iilei/proquint)
[![microsite](https://img.shields.io/badge/iilei.github.io/phonid-blue)](https://iilei.github.io/phonid/#JTVCcGhvbmV0aWMlNUQlMEElMjAlMjBwYXR0ZXJucyUyMCUzRCUyMCU1QidDVkNWQ1hDVkNWQ1hDVkNWQ1hDVkNWQ1hDVkNWQ1hDVkNWQ1hDVkNWQ1hDVkNWQ1hDVkNWQ1hDVkNWQ1hDVkNWQ1hDVkNWQ1hDVkNWQ1hDVkNWQ1hDVkNWQ1hDVkNWQyclNUQlMEElMEElMjAlMjAlNUJwaG9uZXRpYy5wbGFjZWhvbGRlcnMlNUQlMEElMjAlMjAlMjAlMjBDJTIwJTNEJTIwJ2JkZmdoamtsbW5wcnN0dnonJTBBJTIwJTIwJTIwJTIwViUyMCUzRCUyMCdhaW91JyUwQSUyMCUyMCUyMCUyMFglMjAlM0QlMjAnLSclMEElMEElMjMlMjBTdWdnZXN0ZWQlMjBwcmVmbGlnaHQlMjBjaGVja3MlM0ElMEElMEElNUIlNUJwcmVmbGlnaHQlNUQlNUQlMEElMjAlMjBpbnB1dCUyMCUzRCUyMCcyODg1MjEwNTUzOTQ0NTM2Njg3Nzk2NDQ0ODQ5NzcyMjI1MjI5OTE0MzUxODExNzE5OTE2MTEwNTgyMjQwNTk0Nzg4MzUzNzMwNjU3MSclMEElMjAlMjBvdXRwdXQlMjAlM0QlMjAnZ3V6YW4tcmlwYW4taGlraXQtbGF2YXotbXVmYW0tcGF2b2gtbW9wb24tdmFzdWotaGFtYWQta290dXAtaGFkaWYtdmFiYWQtcG9wb2otZ2lydXMtcGl0YW0tZGF6YXIn)

Proquint generates and decodes human-recognisable identifiers: short five-letter words ("proquints") that represent arbitrary-size integers.

Details at the [Proposal for Proquints.](https://arxiv.org/html/0901.4016)

**Source:** [github.com/iilei/proquint](https://github.com/iilei/proquint)

```sh
brew install iilei/tap/proquint
```

After installation, verify with:

```sh
proquint --version
```
