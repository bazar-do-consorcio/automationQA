*** Settings ***
Resource    Base.robot
Test Setup    Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases ***

Cenário 1: Cadastrar usuario PF
    [Tags]    cadastro    regressivo    teste
    Acesso a url do BPM
    Aceita termos de utilização de cookies
    Clicar no botão Vender
    Selecionar a administradora Itaú
    Avanço para a próxima etapa
    Clicar na opção de cliente PF
    Informar os dados do usuário PF
    Avanço para a próxima etapa
    Informo os dados da minha cota contemplada
    Avanço para a próxima etapa
    Informo minha senha de cadastro
    Confirmo o cadastro
    Conta criada com sucesso

Cenário 2: Cadastrar usuario PJ
    [Tags]    cadastro    regressivo
    Acesso a url do BPM
    Aceita termos de utilização de cookies
    Clicar no botão Vender
    Selecionar a administradora Itaú
    Avanço para a próxima etapa
    Clicar na opção de cliente PJ
    Informar os dados do usuário PJ
    Avanço para a próxima etapa
    Informo os dados da minha cota contemplada
    Avanço para a próxima etapa
    Informo minha senha de cadastro
    Confirmo o cadastro
    Conta criada com sucesso