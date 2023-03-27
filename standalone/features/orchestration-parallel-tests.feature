Feature: Feature - Parallel Data Tests

Scenario: Scenario 1 - Sleep 2s - Parallel - Test 1

* print 'Start Test 1'
Given url 'http://localhost:8080/sleep/2000'
When method get
Then status 200
* print 'End Test 1'

Scenario: Scenario 2 - Sleep 2s - Parallel - Test 2

* print 'Start Test 2'
Given url 'http://localhost:8080/sleep/2000'
When method get
Then status 200
* print 'End Test 2'

Scenario: Scenario 3 - Sleep 2s - Parallel - Test 3

* print 'Start Test 3'
Given url 'http://localhost:8080/sleep/2000'
When method get
Then status 200
* print 'End Test 3'

Scenario: Scenario 4 - Sleep 2s - Parallel - Test 4

* print 'Start Test 4'
Given url 'http://localhost:8080/sleep/2000'
When method get
Then status 200
* print 'End Test 4'
