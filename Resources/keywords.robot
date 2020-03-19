*** Keywords ***
Begin Web Test
    Open Browser                about:blank         chrome
    Go To                       http://rental6.infotiv.net/

I Am On Main Page
    Go To                       http://rental6.infotiv.net/

Verify Main Page Has Loaded
    Wait Until Page Contains    When do you want to make your trip?

End Web Test
    Close Browser

Create User Invalid
    Click Button                xpath://*[@id="createUser"]
    Input Text                  id:name         billey
    Input Text                  id:last         bulley
    Input Text                  id:phone        0704123456
    Input Text                  id:emailCreate  billey@hotmail.com
    Input Text                  id:confirmEmail  billeyoo@hotmail.com
    Input Text                  id:passwordCreate  hallihallå2
    Input Text                  id:confirmPassword  hallihallå1
    Click Button                xpath://*[@id="create"]

Invalid Password Message
    Wait Until Page Contains    Passwords must match

Create Valid User
    Click Button                xpath://*[@id="createUser"]
    Input Text                  id:name         billey1223
    Input Text                  id:last         bulley1223
    Input Text                  id:phone        0706923456
    Input Text                  id:emailCreate  billey12223@hotmail.com
    Input Text                  id:confirmEmail  billey12223@hotmail.com
    Input Text                  id:passwordCreate  hallihallå2113
    Input Text                  id:confirmPassword  hallihallå2113
    Click Button                xpath://*[@id="create"]

Verify valid login message
    Wait Until Page Contains    You are signed in as

Login
    Input Text                  id:email        billey123@hotmail.com
    Input Text                  id:password     hallihallå2
    Click Button                xpath://*[@id="login"]

Choose Invalid Rentdate
    Input Text                  id:start        2020-02-28
    Input Text                  id:end          2020-02-28
    Click Button                xpath://*[@id="continue"]

Choose A Valid Rentdate
    Click Button                xpath://*[@id="continue"]
View Invalid Rentdate
    Wait Until Page Contains Element    xpath://*[@id="start"]


Choose Car

    Click Button                xpath://*[@id="bookQ7pass5"]

Enter Card Details
    Input Text                  id:cardNum      1234123412341234
    Input Text                  id:fullName     billey123 bulley123
    Select From List By Label   xpath://select[@title="Month"]  6
    Select From List By Label   xpath://select[@title="Year"]  2021
    Input Text                  id:cvc          123
    Click Button                xpath://*[@id="confirm"]

Go to my page
    Click Button                xpath://*[@id="mypage"]

Delete booking
    Click Button                xpath://*[@id="unBook1"]
    Handle Alert                 action=ACCEPT
    Wait Until Page Contains    Returned

View bookings
    Wait Until Page Contains    My bookings

Verify car has been booked
    Wait Until Page Contains    is now ready for pickup