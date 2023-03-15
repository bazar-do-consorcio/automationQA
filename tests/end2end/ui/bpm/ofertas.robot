*** Settings ***
Resource    Base.robot
Test Setup    Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases ***

Cenário 1: Verificar lista de ofertas
    [Tags]    @Test001
    Acesso a url do google
    Verifique o icone

Cenário 2: Vender uma cota
    [Tags]    @Test002
    Acesso a url do google
    Verifique o icone
