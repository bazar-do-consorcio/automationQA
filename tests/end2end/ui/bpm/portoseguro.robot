*** Settings ***
Resource    Base.robot
Test Setup    Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases ***
Cenário 1: Inclusão de cliente no card via api da porto
    [Tags]    cadastro    regressivo
    Recebo uma cota pela api da Porto
    Acesso a url do BPM operador
    Efetuar o login do operador
    Clicar no botão Kanban
    Seleciono o tipo de consulta "NomeProprietario"
    Pesquiso informando o dado de pesquisa ${name_user} ${coluna_negociacao}

Cenário 2: Inclusão de cliente no card via mar aberto
    [Tags]    cadastro    regressivo 
    Acesso a url do BPM
    Aceita termos de utilização de cookies
    Clicar no botão Vender
    Selecionar a administradora Porto Seguro
    Avanço para a próxima etapa
    Clicar na opção de cliente PF
    Informar os dados do usuário PF
    Avanço para a próxima etapa
    Informo os dados da minha cota contemplada
    Avanço para a próxima etapa
    Informo minha senha de cadastro
    Confirmo o cadastro
    Conta criada com sucesso
    Abro o navegador
    Acesso a url do BPM operador
    Efetuar o login do operador
    Clicar no botão Kanban
    Seleciono o tipo de consulta "NomeProprietario"
    Pesquiso informando o dado de pesquisa ${name_user} ${coluna_qualificacao}



