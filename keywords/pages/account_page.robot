*** Settings ***
Resource    ${CURDIR}/../import.robot


*** Keywords ***
Click logout button
    Wait Until Page Contains Element    xpath=//div[@class='account-page']    
    Click Button    xpath=//button[contains(@class, 'ant-btn-dangerous')]
    Log To Console  Click logout button is working...

