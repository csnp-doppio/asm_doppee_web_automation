*** Settings ***
Resource    ${CURDIR}/../import.robot


*** Keywords ***
Click payment button
    base.Scroll to bottom of page
    Click Element    xpath=//div[@class='total-section-info']//span[text()='PAY']