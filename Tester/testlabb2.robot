*** Settings ***
Documentation                   Documentation abt testsuite
Resource                        ../Resources/keywords.robot
Library                         SeleniumLibrary
Test Setup  Begin Web Test
Test Teardown  End Web Test



*** Test Cases ***
User can access http://rental6.infotiv.net
    [Documentation]             Test will see if loading page is possible
    [Tags]                      AccessWebpage
    Verify Main Page Has Loaded

Creating account using invalid inputs
    [Documentation]             "Page Functionality", "Create User".
    [Tags]                      InvalidCreateUser
    Create User Invalid
    Invalid Password Message

#User can successfully create a new user
 #   [Documentation]             "Page Functionality", "Create User".
 #  [Tags]                      ValidCreateUser
 #   Create Valid User
#    Verify valid login message

Select invalid dates to rent car
    [Documentation]             "Date Selection"
    [Tags]                      InvalidDate
    Login
    Choose Invalid Rentdate
    View Invalid Rentdate

Rent car successfully
    [Documentation]              "Car Selection", "Car Booking", "Successful Booking"
    [Tags]                        ValidRent
    Login
    Choose A Valid Rentdate
    Choose Car
    Enter Card Details
    Verify car has been booked
    Go to my page
    Delete booking

Access my page to view bookings
    [Documentation]             "My Page"
    [Tags]                      ViewBookings
    Login
    Go to my page
    View bookings




Scenario: Log in with valid info
    [Documentation]
    [Tags]                      GherkinLoginTest
    Given I Am On Main Page
    When Login
    Then Verify valid login message

