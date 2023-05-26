*** Settings ***
Library    SeleniumLibrary

Library    String
Resource    ../Base.robot


*** Keywords ***   

Acesso a url do BPM
    Go To       ${URL_USER}
    Wait Until Element Is Enabled    ${btn_vender}    ${GENERAL_TIMEOUT}

Acesso a url do BPM operador
    Go To       ${URL_OPERATOR}
    Aceita termos de utilização de cookies
    Wait Until Element Is Enabled     ${user_email}    ${GENERAL_TIMEOUT}
   

Clicar no botão Vender
    Click Element     ${btn_vender}
    Wait Until Element Is Enabled    ${label_administradora}    ${GENERAL_TIMEOUT}

Clicar no botão Entrar
    Click Element     ${btn_entrar}
    Wait Until Element Is Enabled    ${opc_outrasAdms}    ${GENERAL_TIMEOUT}
