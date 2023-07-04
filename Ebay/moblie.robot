*** Settings ***
[Documentaion]   Basic search functionality
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify basic search functinality for eBay
    [Documentation]  This test case verifes the basic search
    [Tags]  Functional
    Start TestCase
    Verify Search Results
    Filter result by condition
    Verify filter results
    Finish TestCase

*** Keywords ***
Start TestCase
    Open Browser  https://www.ebay.com/  chrome
    Maximize Browser Window

Verify Search Results
    Input Text  //*[@id="gh-ac"]  moblie
    Press Keys  //*[@id="gh-btn"]  [Return]q
    Page Should Contain  results for mobile
Filter result by condition
    mouse over  //*[@id="nid-hlt-33"]/button/span/span
    sleep   3s
    mouse down  //*[@id="nid-pys-48"]/button/span
    Click Element   //*[@id="s0-53-16-5-4[1]-55[1]-10-content-menu"]/li[2]/a/span/span/span

Verify filter results
    Element should contain //*[@id="s0-53-16-6-3-4[0]-3-1-1-list"]/li[1]/div/a/div

Finish TestCase
    Close Browser