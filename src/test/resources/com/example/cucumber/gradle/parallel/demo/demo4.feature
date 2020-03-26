Feature: Echo endpoint should return an echo... again and again and again

  Scenario: Call "echo" endpoint saying "ECHO" again and again and again
    When we call the echo endpoint saying "ECHO_4"
    Then the response should be "ECHO_4... ECHO_4... ECHO_4..."

  Scenario: Call "echo" endpoint saying "Hello" again and again and again
    When we call the echo endpoint saying "Hello_4"
    Then the response should be "Hello_4... Hello_4... Hello_4..."

  Scenario Outline: Call the "echo" endpoint saying "<ThingToSay>" again and again and again
    When we call the echo endpoint saying "<ThingToSay>"
    Then the response should be "<ThingToSay>... <ThingToSay>... <ThingToSay>..."
    Examples:
      | ThingToSay |
      | Asdf_4     |
      | Crown_4    |
      | Baby_4     |
      | Orange_4   |
      | Bottle_4   |
      | Lamp_4     |
      | Book_4     |
