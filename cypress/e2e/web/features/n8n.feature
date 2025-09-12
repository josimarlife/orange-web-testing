@login
Feature: Olé Consultant Portal Login

  As an Olé Consultant
  I want to log into the portal with my credentials
  In order to access the management platform and available tools

  Background:
    Given the user is on the Olé Consultant Portal login page

  @mandatory_fields
  Scenario Outline: Attempt to log in with missing credentials
    When the user enters "<username>" in the username field
    And the user enters "<password>" in the password field
    And the user clicks the "Enter" button
    Then the system should display a validation message indicating that both fields are required

    Examples:
      | description         | username   | password      |
      | Empty username      |            | "validPass123"|
      | Empty password      | "validUser"|               |
      | Both fields empty   |            |               |

  @happy_path
  Scenario: Successful login with valid credentials
    When the user enters a valid username
    And the user enters a valid password
    And the user clicks the "Enter" button
    Then the user should be authenticated and redirected to the portal's main page

  @sad_path
  Scenario Outline: Failed login with invalid credentials
    When the user enters an "<username>" in the username field
    And the user enters a "<password>" in the password field
    And the user clicks the "Enter" button
    Then the system should display an error message stating that the credentials are not valid

    Examples:
      | description        | username        | password         |
      | Invalid username   | "invalid.user"  | "valid.password" |
      | Invalid password   | "valid.user"    | "invalid.pass"   |
      | Both invalid       | "nonexistent"   | "wrongpass"      |

  @navigation
  Scenario: Navigate to the password recovery page
    When the user clicks the "Forgot your password?" link
    Then the user should be redirected to the password recovery page

  @ui @language
  Scenario Outline: Language preference persistence after page reload
    When the user selects "<language>" from the language selector
    And the user reloads the login page
    Then the selected "<language>" should remain active on the page

    Examples:
      | language   |
      | English    |
      | Portuguese |
      | Spanish    |

  @accessibility
  Scenario: Keyboard navigation through login form elements
    # This scenario checks the logical tab order, a key part of keyboard accessibility.
    # Screen reader compatibility should be checked separately with accessibility tools (e.g., Axe, VoiceOver, NVDA).
    When the user presses the "Tab" key to navigate the form
    Then the focus should be on the "username" field
    When the user presses the "Tab" key to navigate the form
    Then the focus should be on the "password" field
    When the user presses the "Tab" key to navigate the form
    Then the focus should be on the "Forgot your password?" link
    When the user presses the "Tab" key to navigate the form
    Then the focus should be on the "Enter" button