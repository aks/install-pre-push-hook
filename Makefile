# Makefile to install `install-pre-push-hook`

bindir = $(HOME)/bin

name = install-pre-push-hook

prog = $(bindir)/$(name)

help:
	@echo "This Makefile has these targets:"
	@echo "  install-home  -- installs \"$(name)\" into ~/bin"
	@echo "  install-local -- installs \"$(name)\" into /usr/local/bin"
	@echo "  install       -- both install-home and install-local"

.PHONY: install install-home install-local install-dir

install:	install-home install-local

install-home:
	@$(MAKE) install-dir bindir=$(HOME)/bin

install-local:
	@$(MAKE) install-dir bindir=/usr/local

install-dir: $(prog)

$(prog): $(name)
	install $? $@
