# imhassla/tap

```sh
brew install imhassla/tap/open-agent
brew upgrade open-agent
```

The formula is bumped automatically by open-agent's release CI on every push to
`main` (a new `vX.Y.Z` is tagged, built, released, and this formula's version +
URLs + sha256 are rewritten). Manual bump, if ever needed: copy the new sha256s
from a release's `checksums.txt` into `Formula/open-agent.rb`.
