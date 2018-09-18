PREFIX = /usr/local
APPNAME = helloworld
helloworld:
	gcc -o $(APPNAME) helloworld.c
install: $(APPNAME)
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp $< $(DESTDIR)$(PREFIX)/bin/$(APPNAME)
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/$(APPNAME)
