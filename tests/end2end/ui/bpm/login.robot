*** Settings ***
Resource    Base.robot
Test Setup    Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases ***

Cenário 1: Itau - Efetuar login
    [Tags]    login    regressivo    smoketest
    Acessar a home de bpm
    Clicar no botão login
    Efetuar o login
    

Cenário 2: Itau - Efetuar login com dados invalidos
    [Tags]    @Test002
    Acesso a url do google
    Verifique o icone

Cenário 3: Outras Adms - Efetuar login
    [Tags]    @Test003
    Acesso a url do google
    Verifique o icone

Cenário 4: Outras Adms - Efetuar login com dados invalidos
    [Tags]    @Test004
    Acesso a url do google
    Verifique o icone

Cenário 5: Logout
    [Tags]    @Test004
    Acesso a url do google
    Verifique o icone

