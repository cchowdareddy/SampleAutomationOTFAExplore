@SuccessFactors @1 @1
Feature: Corning - Success Factors Checkpoint
Background: Corning
Background
Given I navigate to "https://w3.ibm.com/"
Scenario: Verify Checkpoint Actions Successful - W3 Popup Login goodpath1
Given I click on "[Signin]" link
And I enter into input field "[W3_login_Username]" the value "(W3_login_Username)"
And I enter into input field "[W3_login_Password]" the value "(W3_login_Password)"
And I click on "[W3_SignIn_button]" link
And I click on "[CheckPoint_Link]" link
And I should see page title having partial text as "SuccessFactors:"
And I take screenshot


Scenario: Verify Checkpoint Actions UnSuccessful - W3 Invalid Login badpath3
Given I click on "[Cancel]" link
And I click on "[CheckPoint_Link]" link
And I enter into input field "[W3_login_Username]" the value "invalidusername@in.ibm.com"
And I enter into input field "[W3_login_Password]" the value "invalidpassword"
And I click on "[W3_SignIn_button]" link
And "[Failed_Login_Text]" should have partial text as "id or password was entered incorrectly."
And I should not see page title having partial text as "SuccessFactors:"
And I take screenshot

