*** Settings ***
Resource    ${CURDIR}/../import.robot


*** Keywords ***
Click next button after select method
    Click Element   xpath=//button[contains(@class, 'ant-btn-dangerous')]
