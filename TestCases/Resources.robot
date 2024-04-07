*** Settings ***
Library              SeleniumLibrary

*** Variables ***
${url}       https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser}     chrome

*** Keywords ***
Opening my browser
        open browser    ${url}      ${browser}
        maximize browser window

Closing my browser
        close all browsers

login to page
    go to    ${url}

input username
    [Arguments]    ${username}
    input text     id:Email     ${username}

input password
    [Arguments]    ${password}
    input text    id:Password   ${password}

click login button
     click element    xpath://button[normalize-space()='Log in']

Check for Invalid Credentials Message
