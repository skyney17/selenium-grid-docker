*** Settings ***
Documentation    A file with reusable keywords and variables for the Home page.
Library          SeleniumLibrary

***Variables***
${TIMEOUT}    2

*** Keywords ***
Open Browser To Home Page
    Open Browser   http://localhost:8080    Chrome    remote_url=http://localhost:32768/


A Home Page Is Open
    Wait Until Page Contains    Time now is
    ...                         ${TIMEOUT}
    ...                         The Home Page didn't load within ${TIMEOUT} snds.
