*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}        https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
        OPEN BROWSER    ${URL}  ${BROWSER}
        maximize browser window
        loginToApplication
        sleep   5s
        close browser

*** Keywords ***
loginToApplication
        click link    link=Log in
        input text    id=Email  zahid_9999@yahoo.com
        input text    id=Password   Changeme@1
        click button    xpath://button[normalize-space()='Log in']
