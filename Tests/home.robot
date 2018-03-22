*** Variables ***
| ${BROWSER} |   ff
| ${ROOT}    |   https://www.ruv.de/
| ${Page}    |   HomePage
| ${Product} |   0

*** Settings ***
Documentation                   -Home page Test Suite-
Library                         Selenium2Library
Library                         PageObjectLibrary
Resource                         ../Keywords/common.robot


#Copy/Paste the line below into the Terminal to run the script
#pybot -d results --pythonpath PageObjects/Pages Tests/home.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test


*** Test Cases ***
Select all products
    [Documentation]             -Select all products item from the menu
    Go To Page                  ${Page}
    Choose Product              ${Product}

#TODO






