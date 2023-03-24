@parallel=true
Feature: Feature - Parallel data Setup

# Here we call 3 setup in parallel

Scenario: Scenario 1 - Setup 1
    * print 'Start Setup 1'
    * call read('orchestration-parallel-setup-single.feature')
    * print 'End Setup 1'

Scenario: Scenario 2 - Setup 2
    * print 'Start Setup 2'
    * call read('orchestration-parallel-setup-single.feature')
    * print 'End Setup 2'

Scenario: Scenario 3 - Setup 3
    * print 'Start Setup 3'
    * call read('orchestration-parallel-setup-single.feature')
    * print 'End Setup 3'
