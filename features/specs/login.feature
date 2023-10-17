

Feature: Login the Swag Labs's website

    Access and test the login page for Swag Labs's website

Scenario: Login successfully
    Given that i have access to the 'homepage'
    When i enter the 'default_username' and 'default_password'
    And click on the Login button
    Then i should see the Swag Labs homepage