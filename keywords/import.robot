*** Settings ***
Library     SeleniumLibrary
Resource    ${CURDIR}/../common/common.robot

# Features
Resource    ${CURDIR}/features/home_feature.robot
Resource    ${CURDIR}/features/register_feature.robot
Resource    ${CURDIR}/features/login_feature.robot
Resource    ${CURDIR}/features/product_feature.robot
Resource    ${CURDIR}/features/payment_credit_feature.robot

# Pages
Resource    ${CURDIR}/pages/home_page.robot
Resource    ${CURDIR}/pages/search_result_page.robot
Resource    ${CURDIR}/pages/product_page.robot
Resource    ${CURDIR}/pages/topbar_page.robot
Resource    ${CURDIR}/pages/login_page.robot
Resource    ${CURDIR}/pages/register_page.robot
Resource    ${CURDIR}/pages/account_page.robot
Resource    ${CURDIR}/pages/delivery_page.robot
Resource    ${CURDIR}/pages/payment_page.robot
Resource    ${CURDIR}/pages/payment_select_page.robot
Resource    ${CURDIR}/pages/payment_credit_page.robot