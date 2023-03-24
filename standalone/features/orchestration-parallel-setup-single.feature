@parallel=false
Feature: Feature - Single Data Setup Serial

Scenario: Scenario 1 - Delete Data

Given url 'http://localhost:8080/sleep/2000'
When method get
Then status 200

Scenario: Scenario 2 - Create Data

Given url 'http://localhost:8080/sleep/2000'
When method get
Then status 200
