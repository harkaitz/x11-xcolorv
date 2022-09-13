DESTDIR=
PREFIX =/usr/local
all:
clean:
install:

## -- license --
ifneq ($(PREFIX),)
install: install-license
install-license: LICENSE
	@echo 'I share/doc/x11-xcolorv/LICENSE'
	@mkdir -p $(DESTDIR)$(PREFIX)/share/doc/x11-xcolorv
	@cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/x11-xcolorv
endif
## -- license --
## -- install-sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/xcolorv  $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
