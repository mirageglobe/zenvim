# zenvim spec

technical blueprint. the user manual is [README.md](README.md); agent rules are in [AGENTS.md](AGENTS.md).

## architecture

one vimscript file, `zenvim.vim`, which vim-plug loads as a plugin (`Plug "mirageglobe/zenvim"`). there is no build step, no dependency, and no runtime beyond vim.

| section in `zenvim.vim`  | holds                                      |
| :----------------------- | :----------------------------------------- |
| `==> references`         | links to the colour charts and vim guides  |
| `==> config`             | editor settings                            |
| `==> visual major group` | the main highlight groups (colours)        |
| `==> visual minor group` | the secondary highlight groups             |

## check

`make test` sources `zenvim.vim` in a clean vim (`-u NONE`, so no vimrc and no plugins) and exits non-zero on the first error. it proves the file parses and runs; it does not judge how it looks. on a change, also open vim on debian and look.

## decisions

- **single file.** the whole config is short enough to read at once, and a plugin that is one file needs no layout.
- **no plugins inside.** it is loaded by a plugin manager but depends on none, so it works on a bare vim.
- **both colour modes.** highlights set terminal (`ctermfg`) and gui (`guifg`) values side by side; the file notes some distros set `term=screen`, where `term=xterm-256color` can misbehave.

## complexity score

| dimension | score | notes                           |
| :-------- | :---- | :------------------------------ |
| overall   | 1 / 5 | one short vimscript file        |

## roadmap

### near term

- [ ] `[vim]` check how it renders in a modern terminal (truecolor) as well as debian [easy]

### ideas

- [ ] `[vim]` a screenshot in the README so the colours can be judged without installing it [easy]
