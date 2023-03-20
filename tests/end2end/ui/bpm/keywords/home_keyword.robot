*** Settings ***
Library    SeleniumLibrary

Library    String
Resource    ../Base.robot


*** Keywords ***   

Acesso a url do BPM
    Go To       ${BASE_URL}
    Wait Until Element Is Enabled    ${btn_vender}    ${GENERAL_TIMEOUT}

Clicar no botão Vender
    Click Element     ${btn_vender}
    Wait Until Element Is Enabled    ${label_administradora}    ${GENERAL_TIMEOUT}

Clicar no botão Entrar
    Click Element     ${btn_entrar}
    Wait Until Element Is Enabled    ${opc_outrasAdms}    ${GENERAL_TIMEOUT}
