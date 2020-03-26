Feature: Echo endpoint should return an echo... again and again and again and again and again

  Scenario: Call "echo" endpoint saying "ECHO" again and again and again and again and again
    When we call the echo endpoint saying "ECHO_6"
    Then the response should be "ECHO_6... ECHO_6... ECHO_6..."

  Scenario: Call "echo" endpoint saying "Hello" again and again and again and again and again
    When we call the echo endpoint saying "Hello_6"
    Then the response should be "Hello_6... Hello_6... Hello_6..."

  Scenario Outline: Call the "echo" endpoint saying "<ThingToSay>" again and again and again and again and again
    When we call the echo endpoint saying "<ThingToSay>"
    Then the response should be "<ThingToSay>... <ThingToSay>... <ThingToSay>..."
    Examples:
      | ThingToSay |
      | Asdf_6     |
      | Crown_6    |
      | Baby_6     |
      | Orange_6   |
      | Bottle_6   |
      | Lamp_6     |
      | Book_6     |
