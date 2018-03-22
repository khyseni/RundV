*** Variables ***
${BROWSER}   ff
${ROOT}      https://www.ruv.de/
@{Ans}       Arbeitnehmer  privat versichert  Die private Krankenversicherung wechseln
${Page}      EldersCarePage
${drg}       xpath=//div[@class='dragger']
${trg}       xpath=//div[@class='row']
*** Settings ***
Documentation                           -Health Care Test Suite-
Library                                 Selenium2Library
Library                                 PageObjectLibrary
Library                                 BuiltIn
Resource                                ../Keywords/common.robot

#Copy/Paste the line below into the Terminal to run the script
#robot -d results --pythonpath PageObjects/Pages Tests/elderscare.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
Search Private Health + Care
    [Documentation]
    Go To Page              ${Page}
    sleep                   3s
    click element           //*[contains(text(),'Rentner')]
    sleep                   1s
    click element           //*[contains(text(),'Weiter')]
    sleep                   1s
    click element           //*[contains(text(),'Single')]
    sleep                   1s
    click element           //*[contains(text(),'Weiter')]
    sleep                   1s
    click element           //*[contains(text(),'nein')]
    sleep                   1s
    click element           //*[contains(text(),'Weiter')]
    sleep                   1s
    drag and drop by offset     ${drg}  0  370
    #drag and drop          ${drg}  ${trg}
    sleep                   3s


