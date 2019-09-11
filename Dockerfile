FROM centos

RUN yum install epel-release -y

RUN yum install redis hostname -y ; yum clean all

COPY redis-master.conf ${HOME}/redis-master/redis.conf
COPY redis-slave.conf ${HOME}/redis-slave/redis.conf
COPY run.sh ${REDIS_PREFIX}/bin/run.sh

RUN chmod -R 777 ${HOME}/redis-*


CMD [ "run.sh" ]
