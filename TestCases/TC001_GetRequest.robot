*** Settings ***
Library  RequestsLibrary
Library  Selenium2Library





*** Variables ***

**** Test Cases ***
Open Browser  Chrome  http://www.google.com
Create Session  http://www.google.com
Log to console  Passed

op


