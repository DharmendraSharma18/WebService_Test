*** Settings ***
Library  RequestsLibrary
Library  Collections
Library  Collection
Library  Selenium2Library
Library  JSONLibrary

*** Variables ***
${Response}
${base_url}  http://thetestingworldapi.com/
#${base_url}  http://jsonplaceholder.typicode.com/posts/1
${Student_id}   1601

*** Test Cases ***
TC_01_Get_Student_Data
    create session   employee  ${base_url}
    ${Response}=  get request  employee  api/studentsDetails/${Student_id}
    ${Jsncode}=  to json  ${Response.content}
    @{idList}=  get value from json  ${Jsncode}   $.data.id
    ${id}=   get from list  ${idList}   0
    log to console  ${id}
    log to console  ${Response.status_code}
    log to console  ${Jsncode}


