# Fake a fuse install
apt-get install -y libfuse2
mkdir /tmp/fuse
cd /tmp/fuse
apt-get download fuse
dpkg-deb -x fuse_* .
dpkg-deb -e fuse_*
rm fuse_*.deb
echo -en '#!/bin/bash\nexit 0\n' > DEBIAN/postinst
dpkg-deb -b . /tmp/fuse.deb
dpkg -i /tmp/fuse.deb
