package com.example.cucumber.gradle.parallel.demo;


import io.cucumber.junit.CucumberOptions;
import io.cucumber.testng.AbstractTestNGCucumberTests;

@CucumberOptions(
        plugin = {
                "json:build/reports/TestNG/json/testTestNG.json",
                "timeline:build/reports/TestNG/timeline/"
        }
)
public class CucumberRunnerTestNG extends AbstractTestNGCucumberTests {
}
