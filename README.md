# Cucumber Gradle parallel demo
_A minimal example project showcasing how to run cucumber tests in parallel using gradle_

## Goal
The goal of this project is to be a showcase and a minimal example of how to properly run cucumber tests in parallel.

By properly we mean:
 - We can control the number of threads where tests will be run.
 - Each thread is run in a separate JVM, where the SpringBoot app will be booted up once.
 - The desired parallelization level is `Scenario/Example`, but `Feature` is acceptable.
 - An aggregated report is generated out of all the threads.
 - Any test failing in any thread should break the build process.

## Provided gradle tasks
 - `gradle testJUnit4` will run the test in a **sequential** way using **Junit 4**.
 - `gradle testJUnit4_parallel` will run the in a **parallel** way using **Junit 4**.
 - `gradle testJUnit5` will run the test in a **sequential** way using **Junit 5**.
 - `gradle testJUnit5_parallel` will run the in a **parallel** way using **Junit 5**.
 - `gradle testTestNG` will run the test in a **sequential** way using **TestNG**.
 - `gradle testTestNG_parallel` will run the in a **parallel** way using **TestNG**.
 - `gradle testCucumberCLI` will run the test in a **sequential** way using the **CucumberCLI**.
 - `gradle testCucumberCLI_parallel` will run the in a **parallel** way using the **CucumberCLI**.

## Current situation
### JUnit4
`gradle testJUnit4` will run all the test in a in a **sequential** way using **Junit 4**, everything will go right.

`gradle testJUnit4_parallel` will also, for some reason, run all the test in a in a **sequential** way using 
**Junit 4**, even if it should run them in parallel.

### JUnit5
`gradle testJUnit5` will run the test in a **sequential** way using **Junit 5**, everything will go right.

`gradle testJUnit5_parallel` will run the in a **parallel** way using **Junit 5**, but in the same JVM and re-using 
the SpringBoot app, the tests sill fail like crazy because of that.

If we were able to run them each in a separate jvm, that will be perfect.

### TestNG
`gradle testTestNG` will run the test in a **sequential** way using **TestNG**, everything will go right.
`gradle testTestNG_parallel` will run the in a **parallel** way using **TestNG**, but in the same JVM and re-using 
the SpringBoot app, the tests sill fail like crazy because of that.
                                                                                
If we were able to run them each in a separate jvm, that will be perfect.

### CucumberCLI
`gradle testCucumberCLI` will run the test in a **sequential** way using the **CucumberCLI**, everything will go right.

`gradle testCucumberCLI_parallel` will run the in a **parallel** way using the **CucumberCLI**, this is the only one
working right now, bor each feature, it will spawn a JVM where the test will be run achieving the objective in a quite
dirty ad not beautiful way, but ir runs 1m30sec test suite in 30 secs without any side effect, that's 1/3 of the time!
