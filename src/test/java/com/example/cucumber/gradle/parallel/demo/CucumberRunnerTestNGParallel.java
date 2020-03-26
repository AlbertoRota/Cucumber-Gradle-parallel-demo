package com.example.cucumber.gradle.parallel.demo;


import io.cucumber.junit.CucumberOptions;
import io.cucumber.testng.AbstractTestNGCucumberTests;
import org.testng.annotations.DataProvider;

@CucumberOptions(
        plugin = {
                "json:build/reports/TestNG_parallel/json/testTestNG_parallel.json",
                "timeline:build/reports/TestNG_parallel/timeline/"
        }
)
public class CucumberRunnerTestNGParallel extends AbstractTestNGCucumberTests {
    @Override
    @DataProvider(parallel = true)
    public Object[][] scenarios() {
        return super.scenarios();
    }
}
