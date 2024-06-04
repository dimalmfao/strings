CFLAGS = -Wall -Wshadow -O3 -g -march=native
LDLIBS = -lm

all: debug

PHONY += valgrind
valgrind: valgrind
	valgrind --leak-check=full --track-origins=yes --show-leak-kinds=all ./$(BUILD_DIR)/valgrind

PHONY += debug
debug:
	make compile
	$(CC) $(CFLAGS) -g -O0 stringstest.c -o debug stringstest.c
	./debug
	rm -f debug

PHONY += compile
compile: main.c strings.o
	$(CC) $(CFLAGS) -o $@ $^

PHONY += lib
lib: strings.o
	ar rcs libstrings.a strings.o  # For static library
	# Or use the following for shared library:
	# $(CC) -shared -o libstrings.so strings.o

PHONY += install
install:
	install -D -m 0644 libstrings.a "$(DESTDIR)$(LIB_DIR)/libstrings.a"
	install -D -m 0644 strings.h "$(DESTDIR)$(INC_DIR)/strings.h"

PHONY += uninstall
uninstall:
	rm -f $(DESTDIR)$(LIB_DIR)/libstrings.a
	rm -f $(DESTDIR)$(INC_DIR)/strings.h

.PHONY: $(PHONY)
