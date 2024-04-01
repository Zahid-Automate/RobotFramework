*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
RegistrationTest
        open browser      ${url}    ${browser}
        maximize browser window
        set selenium implicit wait    10 seconds    #Implicit Wait
        wait until page contains    Register     #Maximum default time out is 5 seconds
        select radio button    Gender   M
        input text    id:FirstName      maxi
        input text    id:LastName       glenn
        input text    id:Email          maxi.glenn@gmail.com
        input text    id:Password       maxiglenn
        input text    id:ConfirmPassword   maxiglenn

*** Keywords ***

