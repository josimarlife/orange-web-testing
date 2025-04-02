Feature: HRM Orange Application

    @Regression
    Scenario: Login
        Given I open orange hrm page "qa"
        When Enter credential succesfully

    #Scenario: Register
    #Given el usuario está en la página de registro  
    #When ingresa su nombre "Jean carlo"  
    #And ingresa su correo "jcarlos52@gmail.com"  
    #And ingresa su contraseña "125453"  
    #And hace clic en el botón "Registrarse"  
    #Then debería ver un mensaje "Registro completado con éxito"  

    # Scenario: Login
    #     Given I open orange hrm page "staging"
    #     When Enter credential succesfully


    # Scenario: Login
    #     Given I open orange hrm page "prod"
    #     When Enter credential succesfully
