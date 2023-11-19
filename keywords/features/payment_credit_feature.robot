*** Settings ***
Resource    ${CURDIR}/../import.robot


*** Keywords ***
Input credit card for payment detail
    [Arguments]    ${card_number}    ${exp_code}    
    ...            ${cvc_zode}      ${owner_card_name}
    Input card number    ${card_number}
    Input expiration date    ${exp_code}
    Input cvc code    ${cvc_zode}
    Input owner card name    ${owner_card_name}
    Click confirm payment button
