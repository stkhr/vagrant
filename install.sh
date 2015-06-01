#
#centos7 install shell
#

#initialize
cp /usr/share/zoneinfo/Japan /etc/localtime
setenforce 0
sed -i 's/enforcing/disabled/g' /etc/sysconfig/selinux
systemctl stop firewalld
systemctl disable firewalld
groupadd addusers
gpasswd -a vagrant addusers

#yum
yum -y install epel-release
yum -y update
yum -y install git
yum -y install ntp
yum -y install bind-utils
yum -y install wget
yum -y install httpd
yum -y install zlib zlib-devel openssl-devel sqlite-devel gcc-c++ glibc-headers libyaml-devel readline readline-devel zlib-devel libffi-devel

#
#rbenv install
#
#cd /usr/local/
#git clone https://github.com/sstephenson/rbenv.git rbenv
#chgrp -R addusers rbenv
#chmod -R g+rwxs rbenv
##
#mkdir /usr/local/rbenv/plugins
#cd /usr/local/rbenv/plugins
#git clone https://github.com/sstephenson/ruby-build.git ruby-build
#chgrp -R addusers ruby-build
#chmod -R g+rwxs ruby-build
##
#echo 'export RBENV_ROOT=/usr/local/rbenv' >> /etc/profile
#echo 'export PATH="$RBENV_ROOT/bin:$PATH"' >> /etc/profile
#echo 'eval "$(rbenv init -)"' >> /etc/profile
##
#cd /usr/local/rbenv/plugins
#git clone https://github.com/sstephenson/rbenv-default-gems.git rbenv-default-gems
#chgrp -R addusers rbenv-default-gems
#chmod -R g+rwxs rbenv-default-gems
##
#cd /usr/local/rbenv/
#echo "rbenv-rehash" >> default-gems
#

#
#ruby install(yum)
#
#yum -y install gcc gcc-c++ make openssl-devel zlib-devel
#yum -y install sqlite-devel
#cd /tmp
#wget ftp://core.ring.gr.jp/pub/lang/ruby/2.2/ruby-2.2.2.tar.gz
#tar xzf ruby-2.2.2.tar.gz
#cd ruby-2.2.2
#./configure --with-opt-dir=/usr/local --enable-shared --enable-option-checking
#make
#make test
#make install
#echo hello
