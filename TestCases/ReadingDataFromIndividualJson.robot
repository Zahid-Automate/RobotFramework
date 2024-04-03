*** Settings ***
Library               JSONLibrary
Library               SeleniumLibrary
Library               Collections

*** Variables ***
${json_File}          tests/json/individuals.json
${browser}=           chrome
${url}=               https://www.google.com

*** Test Cases ***
Get FirstNameOfIndividual1
    ${json_data}=    Load JSON From File    ${json_File}
    ${first_name}=    Get Value From Json    ${json_data}    $.Individual2[0].firstName
    Log To Console    First Name of Individual1: ${first_name}

GetPhoneNumbersOfIndividual1
    ${json_data}=    Load JSON From File    ${json_File}
    ${individual_data}=    Get From List    ${json_data["Individual1"]}    0
    Log To Console     Individual1 Data: ${individual_data}
    ${phone_numbers}=    Get From Dictionary    ${individual_data}    phoneNumbers
    Log To Console    Phone Numbers: ${phone_numbers}
    ${iphone_numbers}=    Create List
    FOR    ${phone_number}    IN    @{phone_numbers}
        ${type}=    Get From Dictionary    ${phone_number}    type
        Run Keyword If    '${type}' == 'home'    Append To List    ${iphone_numbers}    ${phone_number["number"]}
    END
    Log To Console    Phone Numbers of Individual1 with Type iPhone: ${iphone_numbers}

Enter Value In Google Search
    Open Browser    ${url}    ${browser}
    ${json_data}=    Load JSON From File    ${json_File}
    #log to console    ${json_data}
    ${first_name}=    Get Value From Json    ${json_data}    $.Individual2[0].firstName
    Input Text    name=q    ${firstName[0]}
    Sleep    2s    # Optional: Wait for demonstration
    Close Browser