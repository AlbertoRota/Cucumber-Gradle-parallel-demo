Feature: Echo endpoint should return an echo

  Scenario: Call "echo" endpoint saying "ECHO"
    When we call the echo endpoint saying "ECHO_1"
    Then the response should be "ECHO_1... ECHO_1... ECHO_1..."

  Scenario: Call "echo" endpoint saying "Hello"
    When we call the echo endpoint saying "Hello_1"
    Then the response should be "Hello_1... Hello_1... Hello_1..."

  Scenario Outline: Call the "echo" endpoint saying "<ThingToSay>"
    When we call the echo endpoint saying "<ThingToSay>"
    Then the response should be "<ThingToSay>... <ThingToSay>... <ThingToSay>..."
    Examples:
      | ThingToSay |
      | Asdf_1     |
      | Crown_1    |
      | Baby_1     |
      | Orange_1   |
      | Bottle_1   |
      | Lamp_1     |
      | Book_1     |
