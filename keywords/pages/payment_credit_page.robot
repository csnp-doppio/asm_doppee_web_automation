*** Settings ***
Resource    ${CURDIR}/../import.robot


*** Keywords ***
Input card number
    [Arguments]    ${card_number}
    Input Text    xpath=//input[@id='basic_bin']    ${card_number}


Input expiration date
    [Arguments]     ${exp_date}
    Input Text    xpath=//input[@id='basic_exp']    ${exp_date}


Input cvc code
    [Arguments]     ${cvc_code}
    Input Text    xpath=//input[@id='basic_cvc']    ${cvc_code}


Input owner card name
    [Arguments]     ${card_owner_name}
    Input Text    xpath=//input[@id='basic_owner']    ${card_owner_name}


Click confirm payment button
    Click Button    xpath=//div[@class='form-login']//button
