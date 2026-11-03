.DEFAULT_GOAL := help

.PHONY: help test

help: ## list targets
	@awk '/^[a-z]+:.*##/ { printf "  %-8s %s\n", substr($$1, 1, length($$1)-1), substr($$0, index($$0, "##")+3) }' $(MAKEFILE_LIST)

# source the config in a clean vim (no vimrc, no plugins); any error exits non-zero
test: ## source zenvim.vim in a clean vim and fail on any error
	vim -N -u NONE -i NONE -es -c 'try | source zenvim.vim | catch | cquit | endtry' -c 'qa!'
