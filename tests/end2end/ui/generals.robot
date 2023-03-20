*** Settings ***
Resource    Base.robot

*** Keywords ***

Abrir Navegador
    Setup Screenshots
    Open Browser    browser=gc

Fechar Navegador
    Close Browser 
