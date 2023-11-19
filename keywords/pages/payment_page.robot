*** Settings ***
Resource    ${CURDIR}/../import.robot


*** Keywords ***
Click next button
    Click Element   xpath=//div[@class='payment-selection']//button
