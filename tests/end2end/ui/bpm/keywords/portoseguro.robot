*** Settings ***
Library    SeleniumLibrary

Library    String
Resource    ../Base.robot
Resource    ../../../../service/bpm/Base.robot

*** Keywords ***   
Recebo uma cota pela api da Porto
    ${resp}=    Post request Porto
    ...         type_name=ByInsertQuotaPorto
    
    Log    ${name_user}


