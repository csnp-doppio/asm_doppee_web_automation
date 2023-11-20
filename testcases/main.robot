*** Settings ***
Resource    ${CURDIR}/../keywords/import.robot


*** Test Cases ***
TC-001: Create new user and create order by purchase product
    ${email}    Set Variable    RamMaling328@gmail.com
    ${passwd}   Set Variable    Ram@332211

    base.Open doppee web application
    topbar_page.Click profile icon
    login_page.Click sign up button
    register_feature.Register new user account    ${email}    ${passwd}
    home_page.Current page should be home page

    topbar_page.Click profile icon
    account_page.Click logout button
    home_page.Current page should be home page
    
    topbar_page.Click profile icon
    login_feature.Login with email and password    ${email}    ${passwd}
    home_page.Current page should be home page

    home_feature.Input to search product    phone
    search_result_page.Click product after search    4
    product_feature.Add product to cart
    topbar_page.Click cart icon
    delivery_page.Click payment button
    payment_select_page.Click next button after select method
    payment_credit_feature.Input credit card for payment detail  
    ...     4111111111111111
    ...     12/27
    ...     943
    ...     Any Name
