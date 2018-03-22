*** Variables ***
${BROWSER}   ff
${ROOT}      https://www.ruv.de/
${Username}  kreshnik
${Password}  wrongpassword
${Message}   Bitte überprüfen Sie Ihre Anmeldedaten.
${Page}      LoginPage

*** Settings ***
Documentation                    -User Login test suite
Library                          Selenium2Library
Library                          PageObjectLibrary
Resource                         ../Keywords/common.robot

#Copy/Paste the line below into the Terminal to run the script
#robot -d results --pythonpath PageObjects/Pages Tests/login.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
Invalid Login
    [Documentation]              -Verify that you cannot login with invalid data
    ...                          -Send invalid data
    ...                          -Check for the error message
    Go to page                   ${Page}
    sleep                        2s
    Enter username               ${Username}
    Enter password               ${Password}
    Click login button
    Invalid credentials message  ${Message}





