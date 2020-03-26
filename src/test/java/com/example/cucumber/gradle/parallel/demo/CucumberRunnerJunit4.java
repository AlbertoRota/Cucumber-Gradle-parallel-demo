package com.example.cucumber.gradle.parallel.demo;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {
                "json:build/reports/JUnit4/json/testJUnit4.json",
                "timeline:build/reports/JUnit4/timeline/"
        }
)
public class CucumberRunnerJunit4 {
}
