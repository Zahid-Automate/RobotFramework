*** Settings ***
Library               JSONLibrary
Library               SeleniumLibrary

*** Variables ***
${json_File}=         tests/json/example.json
${browser}=           chrome
${url}=               https://www.google.com

*** Keywords ***
Load JSON File
    ${json_data}=    Load JSON From File    ${json_File}
    [Return]         ${json_data}

*** Test Cases ***
TestCase1
    ${json_data}=    Load JSON File
    # Check Single Value
    ${firstName}=    Get Value From Json    ${json_data}    $.firstName
    Log To Console    ${firstName[0]}
    Should Be Equal   ${firstName[0]}    John

    ${address}=      Get Value From Json    ${json_data}    $.address.streetAddress
    Log To Console    ${address[0]}
    Should Be Equal   ${address[0]}    naist street

TestCase2
    ${json_data}=    Load JSON File
    # Other Test Case using the same JSON data
    ${age}=          Get Value From Json    ${json_data}    $.age
    Log To Console    ${age[0]}
    should be equal as integers    ${age[0]}    26

Enter Value In Google Search
    Open Browser    ${url}    ${browser}
    ${json_data}=    Load JSON From File    ${json_File}
    log to console    ${json_data}
    ${firstName}=    Get Value From Json    ${json_data}    $.firstName
    ${lastName}=     get value from json    ${json_data}    $.lastName
    Input Text    name=q    ${firstName[0]} ${lastName[0]}
    Sleep    2s    # Optional: Wait for demonstration
    Close Browser