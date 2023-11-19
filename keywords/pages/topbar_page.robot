*** Settings ***
Resource    ${CURDIR}/../import.robot


*** Keywords ***
Click profile icon
    Click Element   xpath=//span[contains(@class, 'anticon-user')]

Click cart icon
    base.Scroll to top of page
    Click Element   xpath=//span[@aria-label='shopping-cart']