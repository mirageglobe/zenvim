# agents.md

agent instructions for AI coding assistants working in this repository.

## project

zenvim is a single-file vim config (`zenvim.vim`): editor settings and a colour scheme, loaded as a plugin through vim-plug. there is no build and no other code.

## commands

```bash
make help   # list make targets
make test   # source zenvim.vim in a clean vim and fail on any error
```

## guidelines

- keep it one file; do not split `zenvim.vim` or add plugins to it
- run `make test` before pushing, and try the change on debian (the README asks for this)
- keep section comments (`" ==> config`, `" ==> visual major group`) so the file stays scannable
- do not add workflows; there is nothing to build, and runners cost minutes
- do not commit secrets, tokens or credentials
- no co-author trailers in commits
