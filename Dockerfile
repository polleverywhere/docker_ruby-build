FROM centos
RUN yum install -y \
  wget gcc make bzip2 git \
  && wget -qO - https://github.com/sstephenson/ruby-build/archive/master.tar.gz \
    | tar mzxf - \
  && ruby-build-master/install.sh \
  && yum clean all \
  && rm -rf /tmp/* /var/tmp/* ruby-build-master
