package com.OrangeHRM_TestRunner;

import cucumber.api.CucumberOptions;
import cucumber.api.testng.AbstractTestNGCucumberTests;

@CucumberOptions(
		features="OrangeHRMFeatures"
		,glue={"com.OrangeHRM_Sprint2"}
		,plugin={"json:target/cucumber.json"}
		//,tags={"@unsuccesful_login1,@unsuccesful_login2,@unsuccesful_login3,@unsuccesful_login4,@succesful_login"
		//		+ ",@Configuration_field,@Custom_fields,@Employee_details,@Add_Employee,@Reports,@Myinfo,@Employee_login,@Logout"}
			,tags={"@Myinfo, @Add_Employee, @Employee_login"}	 
				
		)


public class OrangeHRM_TestNG extends AbstractTestNGCucumberTests {

}
