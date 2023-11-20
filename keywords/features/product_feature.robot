*** Settings ***
Resource    ${CURDIR}/../import.robot


*** Keywords ***
Add product to cart
    product_page.Click add product to cart
    product_page.Click ok button on modal after add to cart