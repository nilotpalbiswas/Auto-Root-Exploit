#!/bin/bash
# WARNING: this scripts overwrites ~/.curlrc and /private/etc/sudoers (when successful)
#target=/Library/Frameworks/Xamarin.iOS.framework/Versions/10.6.0.10/share/doc/MonoTouch/apple-doc-wizard
target=/Library/Frameworks/Xamarin.iOS.framework/Versions/10.8.0.175/share/doc/MonoTouch/apple-doc-wizard
rm -rf ~/Library/Developer/Shared/Documentation/DocSets
cat << __EOF > /private/tmp/sudoers
%everyone   ALL=(ALL) NOPASSWD: ALL
__EOF
cat << __EOF > ~/.curlrc
url=file:///private/tmp/sudoers
output=/private/etc/sudoers
__EOF
echo 
echo "*** press CRL+C when the download starts ***"
$target
echo
sudo -- sh -c 'rm -rf /private/tmp/ios-docs-download.*; su -'
rm -f /private/tmp/sudoers ~/.curlrc