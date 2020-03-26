package com.example.cucumber.gradle.parallel.demo;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {
                "json:build/reports/JUnit4_parallel/json/testJUnit4_parallel.json",
                "timeline:build/reports/JUnit4_parallel/timeline/"
        }
)
public class CucumberRunnerJunit4Parallel {
}
