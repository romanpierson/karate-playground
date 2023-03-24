@parallel=false
Feature: Feature 1 - All scenarios serial

Scenario: Scenario 1 - Sleep 2s - Serial

Given url 'http://localhost:8080/sleep/2000'
When method get
Then status 200

Scenario: Scenario 2 - Sleep 2s - Serial

Given url 'http://localhost:8080/sleep/2000'
When method get
Then status 200
