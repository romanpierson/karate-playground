Feature: Feature 1 - Mixed serial and parallel scenarios

Scenario: Scenario 1 - Sleep 2s - Parallel

Given url 'http://localhost:8080/sleep/2000'
When method get
Then status 200

Scenario: Scenario 2 - Sleep 2s - Parallel

Given url 'http://localhost:8080/sleep/2000'
When method get
Then status 200

@parallel=false
Scenario: Scenario 3 - Sleep 2s - Serial

Given url 'http://localhost:8080/sleep/2000'
When method get
Then status 200

@parallel=false
Scenario: Scenario 4 - Sleep 2s - Serial

Given url 'http://localhost:8080/sleep/2000'
When method get
Then status 200


