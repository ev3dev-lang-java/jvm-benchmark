# jvm-benchmark

A JVM benchmark for EV3.

In a EV3 Brick managed with EV3Dev, it is possible to install some [JVM](https://wiki.debian.org/Java/):

- [Oracle Java 8 SE Embedded](http://www.oracle.com/technetwork/java/embedded/downloads/javase/javaseemeddedev3-1982511.html)
- [OpenJDK 8 Headless](https://packages.debian.org/jessie-backports/openjdk-8-jdk-headless)

If you have a Brick with both JRE (Oracle & OpenJDK), this project could
help you to know what JVM has better performance.

## The benchmark script:

```
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
```

## The results:

```
robot@ev3dev:~$ ./benchmark.sh

GeneralBench 1.2
       6 byte[16384] manual copies:       182 ms     540131 bytes/sec
    1220 byte[16384] arraycopies:         360 ms   55523555 bytes/sec
      24 int[4096] manual copies:         200 ms    1966080 bytes/sec
    1220 int[4096] arraycopies:           361 ms   55369750 bytes/sec
  200000 byte add:                         67 ms    2985074 ops/sec
  200000 byte sub:                         60 ms    3333333 ops/sec
  200000 byte mul:                         63 ms    3174603 ops/sec
  200000 byte div:                         95 ms    2105263 ops/sec
  200000 short add:                       102 ms    1960784 ops/sec
  200000 short sub:                        91 ms    2197802 ops/sec
  200000 short mul:                        79 ms    2531645 ops/sec
  200000 short div:                       115 ms    1739130 ops/sec
  200000 char add:                         68 ms    2941176 ops/sec
  200000 char sub:                         89 ms    2247191 ops/sec
  200000 char mul:                         77 ms    2597402 ops/sec
  200000 char div:                        149 ms    1342281 ops/sec
  200000 int add:                          69 ms    2898550 ops/sec
  200000 int sub:                          74 ms    2702702 ops/sec
  200000 int mul:                          86 ms    2325581 ops/sec
  200000 int div:                         106 ms    1886792 ops/sec
  200000 long add:                         77 ms    2597402 ops/sec
  200000 long sub:                         83 ms    2409638 ops/sec
  200000 long mul:                        102 ms    1960784 ops/sec
  200000 long div:                        232 ms     862068 ops/sec
  200000 float add:                       103 ms    1941747 ops/sec
  200000 float sub:                       112 ms    1785714 ops/sec
  200000 float mul:                       104 ms    1923076 ops/sec
  200000 float div:                       175 ms    1142857 ops/sec
  200000 double add:                      124 ms    1612903 ops/sec
  200000 double sub:                      127 ms    1574803 ops/sec
  200000 double mul:                      101 ms    1980198 ops/sec
  200000 double div:                      527 ms     379506 ops/sec
  200000 method calls:                    880 ms     227272 ops/sec
  200000 static method calls:             868 ms     230414 ops/sec
    2000 string concats:                 2896 ms        690 ops/sec
   20000 string compares (easy):          605 ms      33057 ops/sec
    1000 string compares (hard):           22 ms      45454 ops/sec
   20000 object creations:                853 ms      23446 ops/sec
 6242048 Total Loop Executions:         21614 ms     288796 loops/sec
Note: each Loop Execution includes multiple Java operations
100

GeneralBench 1.2
       6 byte[16384] manual copies:        87 ms    1129931 bytes/sec
    1220 byte[16384] arraycopies:         162 ms  123385679 bytes/sec
      24 int[4096] manual copies:         111 ms    3542486 bytes/sec
    1220 int[4096] arraycopies:           144 ms  138808888 bytes/sec
  200000 byte add:                         96 ms    2083333 ops/sec
  200000 byte sub:                          9 ms   22222222 ops/sec
  200000 byte mul:                          3 ms   66666666 ops/sec
  200000 byte div:                         35 ms    5714285 ops/sec
  200000 short add:                       116 ms    1724137 ops/sec
  200000 short sub:                         2 ms  100000000 ops/sec
  200000 short mul:                         1 ms  200000000 ops/sec
  200000 short div:                        47 ms    4255319 ops/sec
  200000 char add:                        119 ms    1680672 ops/sec
  200000 char sub:                          2 ms  100000000 ops/sec
  200000 char mul:                          2 ms  100000000 ops/sec
  200000 char div:                         41 ms    4878048 ops/sec
  200000 int add:                         105 ms    1904761 ops/sec
  200000 int sub:                           2 ms  100000000 ops/sec
  200000 int mul:                           1 ms  200000000 ops/sec
  200000 int div:                          55 ms    3636363 ops/sec
  200000 long add:                        108 ms    1851851 ops/sec
  200000 long sub:                         -1 ms -200000000 ops/sec
  200000 long mul:                         -2 ms -100000000 ops/sec
  200000 long div:                        357 ms     560224 ops/sec
  200000 float add:                       238 ms     840336 ops/sec
  200000 float sub:                         1 ms  200000000 ops/sec
  200000 float mul:                         1 ms  200000000 ops/sec
  200000 float div:                         1 ms  200000000 ops/sec
  200000 double add:                      315 ms     634920 ops/sec
  200000 double sub:                        1 ms  200000000 ops/sec
  200000 double mul:                        1 ms  200000000 ops/sec
  200000 double div:                        1 ms  200000000 ops/sec
  200000 method calls:                     85 ms    2352941 ops/sec
  200000 static method calls:              75 ms    2666666 ops/sec
    2000 string concats:                  491 ms       4073 ops/sec
   20000 string compares (easy):           62 ms     322580 ops/sec
    1000 string compares (hard):            3 ms     333333 ops/sec
   20000 object creations:                135 ms     148148 ops/sec
 6242048 Total Loop Executions:          5200 ms    100393 loops/sec
Note: each Loop Execution includes multiple Java operations
11
robot@ev3dev:~$
```

## Conclussions:

After the review of the results, it is clear that it is better to use
the Oracle JVM for EV3 Brick.

Juan Antonio