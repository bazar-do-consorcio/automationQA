*** Settings ***
Library    SeleniumLibrary

Library    String
Resource    ../Base.robot


*** Keywords ***

Abro o navegador
    Fechar Navegador
    Abrir Navegador
