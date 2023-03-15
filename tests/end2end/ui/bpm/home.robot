*** Settings ***
Resource    Base.robot
Test Setup    Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases ***

Cenário 1: Logar ecommerce
    [Tags]    @Test001
    Acesso a url do google
    Verifique o icone

