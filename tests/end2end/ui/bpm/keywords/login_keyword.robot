*** Settings ***
Library    SeleniumLibrary

Library    String
Resource    ../Base.robot


*** Keywords ***   
Clicar na administradora ${BANK}
    Wait Until Element Is Enabled    ${opc_outrasAdms}    ${GENERAL_TIMEOUT}
    
    IF    '${BANK}' == 'Itaú'
        Double Click Element    ${opc_itau}
    ELSE
        Double Click Element    ${opc_outrasAdms}
    END

Efetuar o login do usuário
    Wait Until Element Is Enabled    ${login_email}    ${GENERAL_TIMEOUT}
    Input Text    ${login_email}    ${LOGIN}
    Input Text    ${login_password}    ${PASSWORD}
    Click Element    ${btn_logar}

Efetuar o logout do usuário
    Wait Until Element Is Enabled    ${btn_logout}    ${GENERAL_TIMEOUT}
    Click Element    ${icon_user}
    Click Element    ${btn_logout}

Login é efetuado com sucesso
    Wait Until Element Is Enabled    ${label_boasvindas}    ${GENERAL_TIMEOUT}
    Element Should Contain    ${label_boasvindas}    Boas-vindas, Teste 

Logout é efetuado com sucesso
    Wait Until Element Is Enabled    ${alert_login}    ${GENERAL_TIMEOUT}
    Element Should Contain    ${alert_login}    Saiu com sucesso. 

Efetuar o login do operador
    Wait Until Element Is Enabled    ${user_email}    ${GENERAL_TIMEOUT}
    Input Text    ${user_email}    ${OPERADOR}
    Input Text    ${user_password}    ${OPERADOR_PWD}
    Click Element    ${btn_logar}