*** Settings ***
Resource    ${CURDIR}/../import.robot


*** Keywords ***
Click product after search
    [Arguments]    ${item_no}

    @{products}      Get Webelements     xpath=//div[@class='product-card-container']//div[contains(@class, 'ant-col')]
    ${length_of_product}    Get Length      ${products}

    IF  ${item_no} > ${length_of_product}
        Fatal Error    No product u need click
    END
    Click Element    ${products}[${item_no}]
