Feature: Echo endpoint should return an echo... again and again

  Scenario: Call "echo" endpoint saying "ECHO" again and again
    When we call the echo endpoint saying "ECHO_3"
    Then the response should be "ECHO_3... ECHO_3... ECHO_3..."

  Scenario: Call "echo" endpoint saying "Hello" again and again
    When we call the echo endpoint saying "Hello_3"
    Then the response should be "Hello_3... Hello_3... Hello_3..."

  Scenario Outline: Call the "echo" endpoint saying "<ThingToSay>" again and again
    When we call the echo endpoint saying "<ThingToSay>"
    Then the response should be "<ThingToSay>... <ThingToSay>... <ThingToSay>..."
    Examples:
      | ThingToSay |
      | Asdf_3     |
      | Crown_3    |
      | Baby_3     |
      | Orange_3   |
      | Bottle_3   |
      | Lamp_3     |
      | Book_3     |
