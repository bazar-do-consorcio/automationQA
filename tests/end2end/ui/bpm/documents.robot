*** Settings ***
Resource    Base.robot
Test Setup    Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases ***

Cenário 1: Documentos - Preencher formulario com dados validos
    [Tags]    @Test001
    Acesso a url do google
    Verifique o icone

Cenário 2: Documentos - Preencher formulario com dados invalidos
    [Tags]    @Test002
    Acesso a url do google
    Verifique o icone
Cenário 3: Dados cadastrais - Preencher formulario com dados validos
    [Tags]    @Test003
    Acesso a url do google
    Verifique o icone

Cenário 4: Dados cadastrais - Preencher formulario com dados invalidos
    [Tags]    @Test004
    Acesso a url do google
    Verifique o icone

Cenário 5: Dados bancarios - Preencher formulario com dados validos
    [Tags]    @Test005
    Acesso a url do google
    Verifique o icone

Cenário 6: Dados bancarios - Preencher formulario com dados invalidos
    [Tags]    @Test006
    Acesso a url do google
    Verifique o icone

Cenário 7: Endereço - Preencher formulario com dados validos
    [Tags]    @Test007
    Acesso a url do google
    Verifique o icone

Cenário 8: Endereço - Preencher formulario com dados invalidos
    [Tags]    @Test008
    Acesso a url do google
    Verifique o icone