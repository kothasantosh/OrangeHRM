Feature: OrangeHRM

#LOGIN PAGE
@unsuccesful_login1
Scenario Outline: Unsuccessful login with invalid credentials
	Given User is on OrangeHRM login page 
 	When User enters "<username>" and "<password>"
	And User clicks on login
	Then User should be able to see alert message as Invalid Credentials
Examples:
| username | password |
| user | user |
| admin | admin |

@unsuccesful_login2
Scenario: Failure in Login on leaving the username empty 
	Given User is on OrangeHRM login page
	When User leaves username blank
	And Clicks the button
	Then User should be able to see username alert message
@unsuccesful_login3
Scenario: Failure in Login on leaving the password empty 
	Given User is on OrangeHRM login page
	When User leaves password blank
	And Clicks the login button
	Then User should be able to see password alert message
@unsuccesful_login4
Scenario: Failure in Login on leaving username and password fields empty 
	Given User is on OrangeHRM login page
	When User leaves username and password fields blank
	And Clicks the login button
	Then User should be able to see alert message
@succesful_login
Scenario: Successful login with valid credentials
	Given User is on OrangeHRM login page 
 	When User enters username and password
	And User clicks on login
	Then User is navigated to Dashboard page
	
#PIM MODULE
#Configuration feild in PIM Module
@Configuration_field	
Scenario: Navigate to Configure PIM field in Configuration
	Given User is on Dashboard page
	When User is navigated to PIM Module
	And User clicks on Optional feilds module in Configuration Module
	Then User can view the Configure PIM Module
@Custom_fields
Scenario: Navigate to Defined Custom Fields module
	Given User is on Dashboard page
	When User is navigated to PIM Module
	And User clicks on Custom feilds module in Configuration Module
	Then User can view the Defined Custom Fields 

#Employee List
@Employee_details	
Scenario: View all Employee Details in PIM Module
	Given User is on Dashboard page
	When User is navigated to PIM Module
	Then User can view details of all employees

#Add Employee
@Add_Employee
Scenario: Add Employee Details
	Given User is on Dashboard page
	When User is navigated to PIM Module
	Then User clicks Add Employee in PIM Module
	And User should be able to add details of new employee

#Reports
@Reports	
Scenario: User should be able to generate reports of employees in reports section
	Given User is on Dashboard page
	When User is navigated to PIM Module
	Then User clicks on Reports in PIM Module
	And User searches for Employee reports

#MY INFO
#Personal Details of Admin
@Myinfo 	
Scenario: Admin should be able to view his personal details
	Given User is on Dashboard page
	When User clicks on My Info Module
	Then User Should be able view his personal details
	
#Employee Logins(Not admin)	
@Employee_login
Scenario: Employee should be able to view his personal details
	Given User is on OrangeHRM login page to enter data of employee 
 	When User enters username and password of the employee
	Then User clicks on login and is navigated to Dashboard page
	And User clicks on My Info Module and can view his personal details only  

#Successful Logout
@Logout	
Scenario: Successful logout from OrangeHRM page
	Given User is on Dashboard page
	When User should clicks on Logout in Welcome Menu
	Then User should be able to see OrangeHRM Login Page
	