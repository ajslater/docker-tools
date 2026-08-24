.PHONY: install
## Install scriptins in ~/bin
## @category Install
install:
	bin/install.sh

.PHONY: update
## Update dependencies
## @category Update
update:
	bin/update-deps.sh

.PHONY: kill-eslint_d
## Kill eslint daemon
## @category Lint
kill-eslint_d:
	bin/kill-eslint_d.sh

.PHONY: fix
## Fix front and back end lint errors
## @category Lint
fix:
	bin/fix-lint.sh

.PHONY: lint
## Lint front and back end
## @category Lint
lint:
	bin/lint.sh

.PHONY: all 
.PHONY: test
.PHONY: clean

include bin/makefile-help.mk
