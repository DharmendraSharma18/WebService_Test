*** Settings ***
Library  Selenium2Library
Library  RequestsLibrary
Library  Collections
Library  JSONLibrary

*** Variables ***
${Response}
${base_url}  http://thetestingworldapi.com/
${Student_id}   142061

*** Test Cases ***
TC_01_Get_Student_Deta
    create session   Stdetails  ${base_url}
    ${Response}=  get request  Stdetails  api/studentsDetails/${Student_id}
    @{St_resp_id}=  get request  Stdetails  api/studentsDetails/${Student_id}
    ${jsn_response}=  to json  ${Response.content}
    @{bdate_list}=   get value from json  ${jsn_response}   $.data.date_of_birth
    ${Dob}=   get from list  ${bdate_list}  0


    log to console  ${Response.status_code}
    log to console  ${jsn_response}
    log to console  ${Dob}
    log to console  ${jsn_response}



