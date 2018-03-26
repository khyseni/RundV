*** Variables ***
${BROWSER}   ff
${ROOT}      https://www.ruv.de/
@{Ans}       Arbeitnehmer  privat versichert  Die private Krankenversicherung wechseln
${Page}      EldersCarePage
${drg}       xpath=//div[@class='dragger']
${trg}       xpath=//div[@class='row']
*** Settings ***
Documentation                           -Elders Care Test Suite-
Library                                 Selenium2Library
Library                                 PageObjectLibrary
Library                                 BuiltIn
Resource                                ../Keywords/common.robot

#Copy/Paste the line below into the Terminal to run the script
#robot -d results --pythonpath PageObjects/Pages Tests/elderscare.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
Search Altersvorsorge
    [Documentation]
    Go To Page              ${Page}

    Answer Questions  Rentner  Single  nein
    sleep  1s
    drag and drop by offset  ${drg}  0  370
    click link  Weiter
    Check Results  Rentner  Single  nein  niedrig
    #drag and drop          ${drg}  ${trg}



