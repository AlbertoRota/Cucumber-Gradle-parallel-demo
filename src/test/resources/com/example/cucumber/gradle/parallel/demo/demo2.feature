Feature: Echo endpoint should return an echo... again

  Scenario: Call "echo" endpoint saying "ECHO" again
    When we call the echo endpoint saying "ECHO_2"
    Then the response should be "ECHO_2... ECHO_2... ECHO_2..."

  Scenario: Call "echo" endpoint saying "Hello" again
    When we call the echo endpoint saying "Hello_2"
    Then the response should be "Hello_2... Hello_2... Hello_2..."

  Scenario Outline: Call the "echo" endpoint saying "<ThingToSay>" again
    When we call the echo endpoint saying "<ThingToSay>"
    Then the response should be "<ThingToSay>... <ThingToSay>... <ThingToSay>..."
    Examples:
      | ThingToSay |
      | Asdf_2     |
      | Crown_2    |
      | Baby_2     |
      | Orange_2   |
      | Bottle_2   |
      | Lamp_2     |
      | Book_2     |
