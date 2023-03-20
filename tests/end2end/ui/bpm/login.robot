*** Settings ***
Resource    Base.robot
Test Setup    Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases ***

Cenário 1: Itau - Efetuar login
    [Tags]    login    regressivo
    Acesso a url do BPM
    Clicar no botão Entrar
    Clicar na administradora Itaú
    Efetuar o login do usuário
    Login é efetuado com sucesso

    

Cenário 2: Outras Adms - Efetuar login
    [Tags]    login    regressivo   
    Acesso a url do BPM
    Clicar no botão Entrar
    Clicar na administradora OutrasAdms
    Efetuar o login do usuário
    Login é efetuado com sucesso

Cenário 3: Efetuar Logout
    [Tags]    login    regressivo     
    Acesso a url do BPM
    Clicar no botão Entrar
    Clicar na administradora OutrasAdms
    Efetuar o login do usuário
    Login é efetuado com sucesso
    Efetuar o logout do usuário
    Logout é efetuado com sucesso

