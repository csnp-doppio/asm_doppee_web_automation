*** Settings ***
Resource    ${CURDIR}/../import.robot


*** Keywords ***
Click add product to cart
    base.Scroll to bottom of page
    Click button   xpath=//button[contains(@class, 'cart-button')]


Click ok button on modal after add to cart
    Wait Until Page Contains Element    xpath=//div[@class='ant-modal-content']    
    Click Button    xpath=//div[@class='ant-modal-confirm-btns']//button