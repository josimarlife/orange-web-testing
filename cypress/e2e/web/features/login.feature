Feature: HRM Orange Application

    @Regression
    Scenario: Login
        Given I open orange hrm page "qa"
        When Enter credential succesfully

    @Regression
    Scenario: Login
        Given I open orange hrm page "dev"
        When Enter credential succesfully


    Scenario: Login
        Given I open orange hrm page "staging"
        When Enter credential succesfully


    Scenario: Login
        Given I open orange hrm page "prod"
        When Enter credential succesfully
