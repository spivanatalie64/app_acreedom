# app_acreedom

**Maintainer:** Natalie (AcreetionOS)  
**Part of:** [AcreetionOS](https://acreetionos.org)

Build scripts, patches, and CI for Acreedom — the privacy-first Gecko browser engine (GNU IceCat fork).

## Structure

```
├── build.sh          Build script (uses machbb)
├── patches/          Custom patches on top of IceCat
└── .gitea/           CI/CD workflows
```

## Prerequisites

- [machbb](https://github.com/spivanatalie64/machbb) — Guile build tool
- [codeberg-tool](https://github.com/spivanatalie64/codeberg-tool) — for Codeberg ops
- IceCat source tree (use `setup-acreedom.sh` in the acreedom project)

## Building

```bash
# From within the IceCat source tree:
./path/to/app_acreedom/build.sh
```

## Patches

Place .patch files in `patches/`. They are applied in sort order during build.

## Updating

To rebase on a newer IceCat release:
1. Fetch upstream: `git fetch icecat`
2. Check out new tag: `git checkout v<new-version>`
3. Re-apply patches: `git am patches/*.patch`
