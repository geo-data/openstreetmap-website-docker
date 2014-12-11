# Install Java
apt-get install -y software-properties-common python-software-properties || exit 1
add-apt-repository -y ppa:webupd8team/java || exit 1
apt-get update -y || exit 1
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections || exit 1
apt-get install -y oracle-java7-installer oracle-java7-set-default || exit 1
