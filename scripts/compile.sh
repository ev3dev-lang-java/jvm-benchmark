#!/bin/bash

robot@ev3dev:~$ cat compile.sh
start=`date +%s`
javac HelloWorld.java
end=`date +%s`

runtime=$((end-start))
echo $runtime

start=`date +%s`
/usr/lib/jvm/java-8-openjdk-armel/jre/bin/java -server -verbose:class HelloWorld
end=`date +%s`

runtime=$((end-start))
echo $runtime

start=`date +%s`
/opt/ejdk1.8.0/linux_arm_sflt/jre/bin/java -server -verbose:class HelloWorld
end=`date +%s`

runtime=$((end-start))
echo $runtime
