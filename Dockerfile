FROM centos:7

RUN yum install -y \
  java-1.8.0-openjdk \
  vim \
  wget

RUN wget http://apache.cs.utah.edu/zookeeper/zookeeper-3.4.10/zookeeper-3.4.10.tar.gz && \
    tar -xvzf zookeeper-3.4.10.tar.gz

ADD scripts/run_all.sh /run_all.sh
ADD scripts/run.sh /run.sh
ADD example_configs/zk_test/zoo1.cfg /zookeeper-3.4.10/conf/zoo1.cfg
ADD example_configs/zk_test/zoo2.cfg /zookeeper-3.4.10/conf/zoo2.cfg
ADD example_configs/zk_test/jmx_exporter.yaml /jmx_exporter.yaml
ADD example_configs/zk_test/jmx_exporter2.yaml /jmx_exporter2.yaml

ENTRYPOINT ["/run_all.sh"]
