*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
This is sample test case
    [documentation]  Google Test
    [tags]  regression

    Open Browser  http://www.google.com  chrome
    close Browser
*** Keywords ***
