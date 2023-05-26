*** Settings ***
Resource    Base.robot
Test Setup    Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases ***
Cenário 1: Validar inclusão de card através da api da porto
    [Tags]    cadastro    regressivo    teste
    Recebo uma cota pela api da Porto
    Acesso a url do BPM operador
    Efetuar o login do operador
    Clicar no botão Kanban
    Seleciono o tipo de consulta "NomeProprietario"
    Pesquiso informando o dado de pesquisa ${name_user} ${coluna_negociacao}



