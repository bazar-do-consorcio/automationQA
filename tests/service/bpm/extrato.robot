*** Settings ***
Resource    Base.robot
Library    json
Library    JSONLibrary

*** Test Cases ***

Cenário 1: Get Extrato
    [Tags]    extrato    regressivo
    
    ${resp}=    Get request with Token
    ...         type_name=ByExtrato
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${BPM_SCHEMAS}/extrato.json
