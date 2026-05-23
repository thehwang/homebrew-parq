# homebrew-parq

Homebrew tap for [`pq`](https://github.com/thehwang/parq) — jq for Parquet.

## Install

```bash
brew install thehwang/parq/pq
```

(One-liner equivalent: `brew tap thehwang/parq && brew install pq`.)

## What you get

A single binary at `$(brew --prefix)/bin/pq`. Run `pq --help` for usage.

## Updating

The formula is auto-bumped by the [parq release workflow](https://github.com/thehwang/parq/blob/main/.github/workflows/release.yml)
on every tag push — no manual edits needed.

For users:

```bash
brew update && brew upgrade pq
```

## Issues

File against the upstream repo: <https://github.com/thehwang/parq/issues>.
