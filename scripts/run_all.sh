#!/bin/bash

JMXPORT=7000 /zookeeper-3.4.10/bin/zkServer.sh start /zookeeper-3.4.10/conf/zoo1.cfg
JMXPORT=7001 /zookeeper-3.4.10/bin/zkServer.sh start /zookeeper-3.4.10/conf/zoo2.cfg

/run.sh
