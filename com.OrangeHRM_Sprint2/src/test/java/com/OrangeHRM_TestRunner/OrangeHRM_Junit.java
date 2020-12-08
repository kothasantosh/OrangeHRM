package com.OrangeHRM_TestRunner;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith (Cucumber.class)
@CucumberOptions(
		features="OrangeHRMFeatures"
		,glue={"com.OrangeHRM_Sprint2"}
		)

public class OrangeHRM_Junit {

}
