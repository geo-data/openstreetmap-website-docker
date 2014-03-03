# Adapted from <http://wiki.openstreetmap.org/wiki/Osmosis/Installation>.

cd /tmp
curl --remote-name http://bretth.dev.openstreetmap.org/osmosis-build/osmosis-latest.tgz
mkdir /opt/osmosis
cd /opt/osmosis
tar -xf /tmp/osmosis-latest.tgz
ln -s /opt/osmosis/bin/osmosis /usr/local/bin/osmosis
