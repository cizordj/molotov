PREFIX ?= /usr
DESTDIR ?=
BINDIR ?= $(PREFIX)/bin
MANDIR ?= $(PREFIX)/share/man

all:
	@echo "Molotov is a shell script, so there is nothing to do. Try using \"make install\" instead."

install-common:
	@install -v -d "$(DESTDIR)$(MANDIR)/man1" && install -m 0644 -v man/molotov.1 "$(DESTDIR)$(MANDIR)/man1/molotov.1"

install: install-common
	@install -v -d "$(DESTDIR)$(BINDIR)/" && install -m 0755 -v src/molotov "$(DESTDIR)$(BINDIR)/molotov"

uninstall:
	@rm -v \
		"$(DESTDIR)$(BINDIR)/molotov" \
		"$(DESTDIR)$(MANDIR)/man1/molotov.1"
