*** Settings ***

Library    DateTime
Library    FakerLibrary       locale=pt_BR
Library    ImapLibrary


*** Variables ***
#Login
${LOGIN}   george.paes@bazardoconsorcio.com.br
${PASSWORD}    Teste@123
${PASSWORD_OPERATOR}    Ab123456!
${OPERADOR}    backup.whatsapp@bazardoconsorcio.com.br
${OPERADOR_PWD}    8zn!QeEJ3Q
${OPERADOR_IMAP}    dgwhtxnufbxypxla

*** Keywords ***

Gerar nome aleatório
    ${NAME}  FakerLibrary.Name Nonbinary
    [Return]    ${NAME}

Gerar cpf aleatório
    ${CPF}  FakerLibrary.cpf
    [Return]    ${CPF}

Gerar cnpj aleatório
    ${CNPJ}  FakerLibrary.cnpj
    [Return]    ${CNPJ}

Gerar email aleatório
    ${EMAIL}  FakerLibrary.Email
    [Return]    ${EMAIL}

Gerar email valido
    ${date}     Get Current Date    result_format=%Y%m%d%H%M%S
    ${EMAIL}    Set Variable    backup.whatsapp+${date}@bazardoconsorcio.com.br

    [Return]    ${EMAIL}

Abrir Email
    Open Mailbox    host=imap.gmail.com    user=${OPERADOR}    password=${OPERADOR_IMAP}
    Delete All Emails

Verificar Email
    Abrir Email    
    ${LATEST}=    Wait For Email    sender=atendimento@bazardoconsorcio.com.br    timeout=60    decode=utf-8
    ${EMAIL}=    Get Email Body    ${LATEST}
    ${LINK}=    Get Links From Email    ${LATEST}
    Log    ${LINK}
    Open Link From Email    email_index=${EMAIL}    link_index=0
    #${link}=    Get Links From Email     ${LATEST}
    #Log    ${link}
    #${HTML}=    Open Link From Email    ${LATEST}
    
    


