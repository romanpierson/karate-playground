@parallel=false
Feature: Overall orchestration

Scenario: Scenario 1 - Parallel Data Setup
    * call read('orchestration-parallel-setup.feature')

Scenario: Scenario 2 - Parallel Data Tests

    * call read('orchestration-parallel-tests.feature')
