package com.example.cucumber.gradle.parallel.demo;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.jupiter.api.Assertions;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.web.client.TestRestTemplate;

public class StepGlue {
    @Value("${server.port.forTest}")
    private int port;

    @Value("${app.title}")
    private String title;

    private TestRestTemplate testRestTemplate =  new TestRestTemplate();

    private String lastEcho;

    @When("we call the echo endpoint saying {string}")
    public void weCallTheEchoEndpointSaying(String echoTest) {
        lastEcho = testRestTemplate.getForObject(
                String.format("http://localhost:%d/echo/shout/%s", port, echoTest),
                String.class
        );
    }

    @Then("the response should be {string}")
    public void theResponseShouldBe(String string) {
        Assertions.assertEquals(string, lastEcho);
    }
}
