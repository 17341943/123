FROM centos:7
MAINTAINER baiyu "baiyu@tenxcloud.com"
RUN yum install wget
RUN wget https://coding.net/u/maicong/p/AMH-4.2/git/raw/master/amh-mc.sh bash amh-mc.sh 2>&1 | tee amh-mc.log
RUN  echo \1

# Expose the container port
EXPOSE 8888 8888 22 3306
CMD ["/run.sh"]


