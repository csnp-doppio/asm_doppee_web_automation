*** Settings ***
Resource    ${CURDIR}/import.robot

*** Keywords ***
Open doppee web application

    ${URL}    Set Variable    ${EMPTY}
    IF  '${env}' == 'sit'
        ${URL}  Set Variable    https://doppee.doppio-tech.com
    ELSE IF  '${env}' == 'uat'
        ${URL}  Set Variable    https://training-platform.doppio-tech.com    
    END

    Open Browser   ${URL}    chrome
    Maximize Browser Window



Scroll to top of page
    Sleep   1
    Execute Javascript  window.scrollTo(0, 0);


Scroll to bottom of page
    Sleep   1
    Execute Javascript  window.scrollTo(0, document.body.scrollHeight);