*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://qa-automation-practice.netlify.app/
${browser}  chrome

*** Test Cases ***
Select Radio Button
        open browser    ${url}  ${browser}
        set selenium speed    2s
        maximize browser window

        click link    xpath://a[normalize-space()='Buttons']
        click link    id:radio-buttons

        #Selecting Radio Button
        select radio button  materialExampleRadios     radio-button2
        select radio button    materialExampleRadios    radio-button1


        #Selecting Check Box
        click link    xpath://a[normalize-space()='Buttons']
        click link    id:checkboxes

        select checkbox     checkbox1
        select checkbox     checkbox2

        unselect checkbox    checkbox1

        close browser

*** Keywords ***

