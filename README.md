# homebrew-cyrep

Homebrew tap for [cyrep](https://pmuston.github.io/cyrep) — turn graph data into
Markdown shaped for LLM context, driven by a YAML report definition.

```bash
brew tap pmuston/cyrep
brew trust pmuston/cyrep   # required for third-party taps
brew install cyrep
```

On Linux without Homebrew:

```bash
curl -fsSL https://pmuston.github.io/install.sh | sh -s cyrep
```

Then `man cyrep` for the full reference, or `cyrep run --help`.

This repo hosts the formula and the release binaries. cyrep is run against
customer plant databases, so its source repository is private; the binaries are
MIT licensed and ship the licence in every tarball.
