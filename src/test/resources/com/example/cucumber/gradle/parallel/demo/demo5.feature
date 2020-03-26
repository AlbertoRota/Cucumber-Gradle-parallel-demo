Feature: Echo endpoint should return an echo... again and again and again and again

  Scenario: Call "echo" endpoint saying "ECHO" again and again and again and again
    When we call the echo endpoint saying "ECHO_5"
    Then the response should be "ECHO_5... ECHO_5... ECHO_5..."

  Scenario: Call "echo" endpoint saying "Hello" again and again and again and again
    When we call the echo endpoint saying "Hello_5"
    Then the response should be "Hello_5... Hello_5... Hello_5..."

  Scenario Outline: Call the "echo" endpoint saying "<ThingToSay>" again and again and again and again
    When we call the echo endpoint saying "<ThingToSay>"
    Then the response should be "<ThingToSay>... <ThingToSay>... <ThingToSay>..."
    Examples:
      | ThingToSay |
      | Asdf_5     |
      | Crown_5    |
      | Baby_5     |
      | Orange_5   |
      | Bottle_5   |
      | Lamp_5     |
      | Book_5     |
