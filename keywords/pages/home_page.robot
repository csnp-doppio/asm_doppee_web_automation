*** Settings ***
Resource    ${CURDIR}/../import.robot


*** Keywords ***
Input Search Text
    [Arguments]    ${word}
    Input Text    xpath=//input[contains(@class, 'ant-input')]    ${word}


Submit Input Search
    Press Keys    //input[contains(@class, 'ant-input')]    ENTER
    Wait Until Page Contains Element     xpath=//div[@class='product-card-container']//div[contains(@class, 'ant-col')]


Current page should be home page
    Wait Until Page Contains Element    xpath=//div[@class='product-card-container']