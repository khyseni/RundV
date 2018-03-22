*** Settings ***
Library  Selenium2Library

*** Variables ***


*** Keywords ***
Begin Web Test
    Open browser  ${ROOT}  ${BROWSER}
    Maximize browser window

End Web Test
    Close all browsers

