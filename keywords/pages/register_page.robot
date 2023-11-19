*** Settings ***
Resource    ${CURDIR}/../import.robot


*** Keywords ***
Input email
    [Arguments]     ${email}
    Input Text    xpath=//input[@id="basic_username"]    ${email}


Input password
    [Arguments]     ${password}
    Input Text    xpath=//input[@id="basic_password"]    ${password}


Input confirm password
    [Arguments]     ${password}
    Input Text    xpath=//input[@id="basic_confirmPassword"]    ${password}


Click sign up button
    Click Button    xpath=//form/div[contains(@class, 'ant-form-item')]//button


Click ok button on modal after register
    Wait Until Page Contains Element    xpath=//div[@class='ant-modal-content']    
    Click Button    xpath=//div[@class='ant-modal-confirm-btns']//button