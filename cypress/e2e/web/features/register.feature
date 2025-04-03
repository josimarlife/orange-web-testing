Feature: HRM Orange Application

    @Regression
    Scenario: Login
        Given I open orange hrm page "qa"
        When Enter credential succesfully

        
        When presiona click en el boton "My Info"
       # When ingresa datos personales principales satisfactoriamente
        When ingresa fecha
       
    

# Scenario: Login
#     Given I open orange hrm page "staging"
#     When Enter credential succesfully


# Scenario: Login
#     Given I open orange hrm page "prod"
#     When Enter credential succesfully
