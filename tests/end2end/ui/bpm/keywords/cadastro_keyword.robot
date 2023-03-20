*** Settings ***
Library    SeleniumLibrary

Library    String
Resource    ../Base.robot


*** Keywords ***   


Aceita termos de utilização de cookies
    
    ${isVisible} =    Run Keyword And Return Status    Element Should Be Visible    ${btn_cookie}

    WHILE   ${isVisible} == False
        ${isVisible} =    Run Keyword And Return Status    Element Should Be Visible    ${btn_cookie}
    END

    Double Click Element    ${btn_cookie}

    WHILE   ${isVisible} == True
        ${isVisible} =    Run Keyword And Return Status    Element Should Be Visible    ${btn_cookie}
    END
    

Selecionar a administradora Itaú
    Wait Until Element Is Enabled    ${option_itau}    ${GENERAL_TIMEOUT}
    Click Element    ${option_itau}

Avanço para a próxima etapa
    Wait Until Element Is Enabled    ${btn_avancar}    ${GENERAL_TIMEOUT}

    Click Element    ${btn_avancar}

Clicar na opção Pessoa Física
    Wait Until Element Is Enabled    ${btn_pf}     ${GENERAL_TIMEOUT}
    Click Element    ${btn_pf}

Clicar na opção Pessoa Jurídica
    Wait Until Element Is Enabled    ${btn_pj}      ${GENERAL_TIMEOUT}
    Click Element    ${btn_pj}

Informar os dados do usuário ${TYPE_CLIENT}
    Wait Until Element Is Enabled    ${fld_name}    ${GENERAL_TIMEOUT}
    
    ${NAME}    Gerar nome aleatório
    ${CPF}    Gerar cpf aleatório
    ${CNPJ}    Gerar cnpj aleatório
    ${EMAIL}    Gerar email aleatório

    Input Text    ${fld_name}   ${NAME}
  

    IF   '${TYPE_CLIENT}' == 'PF' 
    Input Text    ${fld_cpf}    ${CPF}
    Input Text    ${fld_email}     ${EMAIL}
    Input Text    ${fld_numberCel}    11954507555
    ELSE
    Input Text    ${fld_cnpj}    ${CNPJ}
    Input Text    ${fld_email}     ${EMAIL}
    Input Text    ${fld_numberCel}    11954507555
    END
    
Informo os dados da minha cota contemplada
    Wait Until Element Is Visible    ${fld_group}    ${GENERAL_TIMEOUT}
    Input Text    ${fld_group}    8596   
    Input Text    ${fld_numberQuota}   2351
    Click Element    ${label_quotaContemplada}

Informo minha senha de cadastro 
    Wait Until Element Is Enabled    ${fld_password}    ${GENERAL_TIMEOUT}
    Input Text    ${fld_password}    Test@123 
    Input Text    ${fld_confirmPassword}    Test@123
    Click Element    ${check_termos} 


Confirmo o cadastro
    Click Element    ${btn_create}    

Conta criada com sucesso
    Wait Until Element Is Enabled    ${alert_confirmCreateAccount}    ${GENERAL_TIMEOUT}
    Element Should Contain    ${alert_confirmCreateAccount}    Enviamos um email para 
    Element Should Contain    ${alert_confirmCreateAccount}    com instruções para confirmar a sua conta. Após a confirmação você pode acessar sua conta usando a senha cadastrada.
    




