*** Settings ***

Library    DateTime
Library    FakerLibrary       locale=pt_BR


*** Variables ***
#Login
${LOGIN}   george.paes@bazardoconsorcio.com.br
${PASSWORD}    Teste@123

*** Keywords ***

Gerar nome aleatório
    ${NAME}  FakerLibrary.Name
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




