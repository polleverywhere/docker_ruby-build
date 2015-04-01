FROM ubuntu-debootstrap:trusty
RUN apt-get -q update \
  && DEBIAN_FRONTEND=noninteractive apt-get -q -y install wget \
  && wget -qO - https://github.com/sstephenson/ruby-build/archive/master.tar.gz \
    | tar mzxf - \
  && ruby-build-master/install.sh \
  && apt-get -q clean \
  && rm -rf /var/lib/apt/lists /tmp/* /var/tmp/* ruby-build-master
