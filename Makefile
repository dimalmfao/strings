CFLAGS = -Wall -Wshadow -O3 -g -march=native
LDLIBS = -lm

all: stringstest

PHONY += valgrind
valgrind: valgrind
	valgrind --leak-check=full --track-origins=yes --show-leak-kinds=all ./$(BUILD_DIR)/valgrind

PHONY += stringstest
stringtest:
	make strings
	$(CC) $(CFLAGS) -g -O0 strlibtest.c -o stringstest strlib.c
	./stringstest
	rm -f stringstest

PHONY += strings
strings: main.c strlib.o
	$(CC) $(CFLAGS) -o $@ $^

.PHONY: $(PHONY)
