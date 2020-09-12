*** Settings ***
Library           RequestsLibrary
Library           Collections
Library           JSONLibrary
Library           robotframework-jsonlibrary


*** Variables ***
${base_url}       http://thetestingworldapi.com/
${Original_DoB}    18/09/1986
${header}         content-type=application/json


*** Test Cases ***
TC001
    Create Session    E2E_Session    ${base_url}
    &{body}=    Create Dictionary    first_name=Dharmendra    middle_name=Kumar    last_name=Sharma    date_of_birth=18/09/1986
    ${PostResponse}=    Post Request    E2E_Session    /api/students    ${header}    ${body}
    ${status}    Set Variable    ${PostResponse.status_code}
    log to console  ${status}
