*** Settings ***
Resource    ${CURDIR}/../import.robot


*** Keywords ***
Login with email and password
    [Arguments]     ${email}    ${passwd}
    login_page.Input email    ${email}
    login_page.Input password    ${passwd}
    login_page.Click login button
    login_page.Click ok button on modal after login
