*** Variables ***
${BROWSER}   ff
${ROOT}      https://www.ruv.de/
@{Ans}       Arbeitnehmer  privat versichert  Die private Krankenversicherung wechseln
${Page}      HealthCarePage

*** Settings ***
Documentation                           -Health Care Test Suite-
Library                                 Selenium2Library
Library                                 PageObjectLibrary
Library                                 BuiltIn
Resource                                ../Keywords/common.robot

#Copy/Paste the line below into the Terminal to run the script
#robot -d results --pythonpath PageObjects/Pages Tests/healthcare.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
Search Private Health + Care
     [Documentation]                     -Test: Answer 3 questions to find out the product you are looking for
     Go To Page                          ${Page}
     Answer Questions                    @{Ans}
     Check Results                       @{Ans}









