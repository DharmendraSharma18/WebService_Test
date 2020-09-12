*** Settings ***
Library  Collections
Library  RequestsLibrary
Library  JSONLibrary
Library  SeleniumLibrary

*** Variables ***
${base_url}  http://thetestingworldapi.com/Help
${Original_DoB}  12/03/1966

*** Test Cases ***
TC_001_End2End_Post_Put_Get_Delete
    [Tags]  Smoke
    create session  End2EndSession  ${base_url}
    &{body}=    create dictionary  first_name=Dharm  middle_name=K  last_name=Shar  date_of_birth=11/01/1971
    &{header}=   create dictionary  Content-Type=application/json
    ${PostResponse}=  post request  End2EndSession   api/Students  headers=${header}  data=${body}
    log to console  ${PostResponse.status_code}
    ${jsonPostResponse}=  to json   ${PostResponse.content}
    @{Post_id}=  get value from json    ${jsonPostResponse}  id
    ${id}=  get from list  ${Post_id}   0
    log to console  ${id}

  #  set to dictionary  ${body}  id=${id}  date_of_birth=11/11/1986
    &{body1}=  create dictionary  id=${id}   first_name=Dharmendra  middle_name=Kumar  last_name=Sharma  date_of_birth=12/01/1986
    ${PutResponse}=  Put Request  End2EndSession    api/Students/${id}    headers=${header}   data=${body1}
    log to console  ${PutResponse.status_code}
    log to console  ${PutResponse.content}
    ${getResponse}=     get request  End2EndSession     api/Students/${id}
    ${jsonResponse}=    to json  ${getResponse.content}
    log to console   ${jsonResponse.content}




