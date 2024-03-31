*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}      chrome
${Url}          https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    open browser    ${url}  ${browser}
    maximize browser window
    title should be    nopCommerce demo store
    click link    link=Log in

    ${"emailAddress"}     set variable    id=Email

    element should be visible   ${"emailAddress"}
    element should be enabled   ${"emailAddress"}

    input text    ${"emailAddress"}     test@gmail.com
    sleep    5s
    clear element text    ${"emailAddress"}
    sleep   5s
    close browser
*** Keywords ***
