*** Settings ***
Library      SeleniumLibrary
Resource        Resources.robot
Suite Setup    Opening my browser
Suite Teardown    Closing my browser

*** Test Cases ***
TC1 Invalid UserName and Password
    [Tags]    sanity
    Invalid Login    abc        xyz
    click button    name:continue

TC2 Valid Login
    [Tags]    regression
    Invalid Login       admin@yourstore.com     admin

*** Keywords ***
Invalid Login
   [Arguments]        ${username}           ${password}
   input username    ${username}
   input password    ${password}
   click login button