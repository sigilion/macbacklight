PREFIX = /usr/local

obj = macbacklight.o
bin = macbacklight

$(bin): $(obj)
	$(CC) -o $@ $(obj) $(LDFLAGS)

.PHONY: clean
clean:
	rm -f $(obj) $(bin)

.PHONY: install
install:
	install -Dm 4755 $(bin) $(DESTDIR)$(PREFIX)/bin/$(bin)

.PHONY: uninstall
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/$(bin)
