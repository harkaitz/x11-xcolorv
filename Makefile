DESTDIR=
PREFIX =/usr/local
all:
clean:
install:

## -- install-sh --
install: install-sh
install-sh:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@echo 'I bin/xcolorv'   ; cp bin/xcolorv     $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
## -- license --
install: install-license
install-license: LICENSE
	@echo 'I share/doc/x11-xcolorv/LICENSE'
	@mkdir -p $(DESTDIR)$(PREFIX)/share/doc/x11-xcolorv
	@cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/x11-xcolorv
## -- license --
