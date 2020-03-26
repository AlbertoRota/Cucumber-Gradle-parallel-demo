package com.example.cucumber.gradle.parallel.demo;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.jupiter.api.Assertions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.web.server.LocalServerPort;

public class StepGlue {

    @LocalServerPort
    private int port;

    @Autowired
    @SuppressWarnings("SpringJavaAutowiredMembersInspection") // Handled by Cucumber
    private TestRestTemplate testRestTemplate;

    private static String lastEcho;

    @When("we call the echo endpoint saying {string}")
    public void weCallTheEchoEndpointSaying(String string) {
        StepGlue.lastEcho = testRestTemplate.getForObject(
                String.format("http://localhost:%d/echo/shout/%s", port, string),
                String.class
        );
    }

    @Then("the response should be {string}")
    public void theResponseShouldBe(String string) {
        Assertions.assertEquals(string, StepGlue.lastEcho);
    }
}
