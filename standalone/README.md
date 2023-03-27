# Standalone

This project demonstrates setups run with the standalone karate jar

## Prerequisites

Download the standalone karate jar and place it in this folder.

```
https://github.com/karatelabs/karate/releases/download/v1.3.1/karate-1.3.1.jar
```

## How to run the features

To run without parallelism

```
java -jar karate-1.3.1.jar  features/orchestration-main.feature
```

To run with parallelism (eg 5 Threads max)

```
java -jar karate-1.3.1.jar -T 5  features/orchestration-main.feature
```


## Features


Feature | Description | Observation
----|------|----
all-scenarios-parallel | Contains 4 scenarios that can run in parallel | If run parallel executed in parallel 
all-scenarios-serial | Contains 2 scenarios that must run serial | Always executed serial
scenarios-parallel-serial-mixed | Contains each 2 serial and 2 parallel scenarios | If run parallel parallel scenarios are executed in parallel
orchestration-parallel-setup-single | Single setup feature that runs 2 scenarios in serial | Always executed serial
orchestration-parallel-setup | Setup Feature that should run 3 times parallel-setup-single in parallel | If run parallel the 3 scenarios are executed in parallel - whereas internally each 2 scenarios are executed serial
orchestration-parallel-tests | Test feature that should run 4 scenarios in parallel | If run parallel executed in parallel 
orchestration-main | Main feature that should run in a serial way scenario parallel-setup followed by parallel-tests | It seems that having this feature serial it disables all internal parallel orchestrations?

