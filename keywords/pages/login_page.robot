*** Settings ***
Resource    ${CURDIR}/../import.robot


*** Keywords ***
Input email
    [Arguments]    ${email}
    Input Text    xpath=//input[@type='text']    ${email}


Input password
    [Arguments]    ${password}
    Input Text    xpath=//input[@type='password']    ${password}


Click login button
    Click Button    xpath=//form/div[contains(@class, 'ant-form-item')][3]//button


Click sign up button
    Click Button    xpath=//form/div[contains(@class, 'ant-form-item')][4]//button


Click ok button on modal after login
    Wait Until Page Contains Element    xpath=//div[@class='ant-modal-content']    
    Click Button    xpath=//div[@class='ant-modal-confirm-btns']//button