*** Settings ***
Resource    Base.robot
Test Setup    Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases ***
Cenário 1: Inclusão de cliente no card via mar aberto
    [Tags]    mdcota    leilao    regressivo
    Incluo uma oferta no mdOferta Mar Aberto
    Acesso a url do BPM operador
    Efetuar o login do operador
    Clicar no botão Kanban
    Seleciono o tipo de consulta "EmailProprietario"
    Pesquiso informando o dado de pesquisa ${email_user} ${coluna_negociacao}

Cenário 2: Inclusão de cliente no card via leilão
    [Tags]    mdcota    leilao    regressivo
    Incluo uma oferta no mdOferta Leilão
    Acesso a url do BPM operador
    Efetuar o login do operador
    Clicar no botão Kanban
    Seleciono o tipo de consulta "EmailProprietario"
    Pesquiso informando o dado de pesquisa ${email_user} ${coluna_negociacao}
