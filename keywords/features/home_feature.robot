*** Settings ***
Resource    ${CURDIR}/../import.robot


*** Keywords ***
Input to search product
    [Arguments]     ${word}
    home_page.Input Search Text     ${word}
    home_page.Submit Input Search