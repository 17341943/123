FROM CentOS:6
MAINTAINER baiyu "baiyu@tenxcloud.com"
RUN wget https://coding.net/u/maicong/p/AMH-4.2/git/raw/master/amh-mc.sh
bash amh-mc.sh 2>&1 | tee amh-mc.log
RUN 1
# Expose the container port
EXPOSE 8888 8888
CMD ["/run.sh"]


