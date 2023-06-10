Feature: Log in




  Scenario Outline: Successful log in
    Given user is on login page
    When User enter  "<fullname>","<password>"
    And User click on  login  button
    Then Then user should see a welcom message "<message>"

    Examples:
      | fullname | password | message |
      | Raj Patel        | 12345    | Hello Raj Patel, let's complete the test form: |



  Scenario Outline: Negative log in
    Given user is on login page
    When User enter  "<fullname>","<password>"
    And User click on  login  button
    Then User should see error message"<message>"
    Examples:
      | fullname      | password | message|
      | Raj Patel      |          |Password is invalid|
      | Raj Patel      | 123456   |Password is invalid|
      |                |          |Password is invalid|




  Scenario Outline: user login with blank user name
    Given user is on login page
    When User enter  "<fullname>","<password>"
    And User click on  login  button
    Then User should see error message"<message>"
    Examples:
      | fullname | password | message |
      |          | 12345    | Please provide your full name|



















