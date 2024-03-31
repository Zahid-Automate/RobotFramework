*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}   https://qa-automation-practice.netlify.app/dropdowns
${browser}  chrome

*** Test Cases ***
DropDownTest
    open browser    ${url}  ${browser}
    select from list by label    dropdown-menu      India
    sleep   1s
    select from list by value    dropdown-menu  China
    close browser


*** Keywords ***


