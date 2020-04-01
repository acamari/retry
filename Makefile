PROG ?= retry
MAN ?=
MANDOCBIN ?= mandoc
INSTALL ?= install
PREFIX ?= /usr/local
BINDIR ?= ${PREFIX}/bin
MANDIR ?= ${PREFIX}/man/man

install:
	${INSTALL} -o root -m 755 ${PROG} ${BINDIR}
	test "x${MAN}" = x || { \
	section=`expr "${MAN}" : '.*\.\([^.]*\)$$'` && \
	${INSTALL} -o root -m 644 ${MAN} ${MANDIR}$${section}; }
