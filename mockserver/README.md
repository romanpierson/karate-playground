# Mockserver

This project is used to serve as a mockserver to be used by the various karate test playgrounds.

## How to run the app

As gradle vertx plugin is used you can just start the application with 

```java
gradle vertxRun
```

## Supported requests

This runs a simple GET request that waits the milliseconds specified in the url

```java
curl http://localhost:8080/sleep/1000"
```
