*** Settings ***
Resource    ${CURDIR}/../import.robot


*** Keywords ***
Register new user account
    [Arguments]     ${email}    ${password}
    register_page.Input email    ${email}
    register_page.Input password    ${password}
    register_page.Input confirm password    ${password}
    register_page.Click sign up button
    register_page.Click ok button on modal after register