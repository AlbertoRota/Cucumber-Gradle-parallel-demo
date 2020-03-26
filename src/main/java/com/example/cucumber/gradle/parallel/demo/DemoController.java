package com.example.cucumber.gradle.parallel.demo;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/echo")
public class DemoController {

    @SuppressWarnings("S1450")
    private static String lastEcho = "";

    @GetMapping(value = "/shout/{newEcho}", produces = {"application/json"})
    public String createBook(@PathVariable String newEcho) {
        // Store the "newEcho" in an "static" variable.
        DemoController.lastEcho = newEcho;

        // Wait a bit...
        try {
            Thread.sleep(1500);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }

        // Return the echo from the static storage.
        return String.format("%1$s... %1$s... %1$s...", DemoController.lastEcho);
    }

}
