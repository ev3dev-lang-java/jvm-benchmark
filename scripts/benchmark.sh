#!/bin/bash

start=`date +%s`
/usr/lib/jvm/java-8-openjdk-armel/jre/bin/java -server -jar jvm-benchmark-all-0.1.0-SNAPSHOT.jar
end=`date +%s`

runtime=$((end-start))
echo $runtime

start=`date +%s`
/opt/ejdk1.8.0/linux_arm_sflt/jre/bin/java -server -jar jvm-benchmark-all-0.1.0-SNAPSHOT.jar
end=`date +%s`

runtime=$((end-start))
echo $runtime