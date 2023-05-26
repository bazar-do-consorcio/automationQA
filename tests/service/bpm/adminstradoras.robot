*** Settings ***
Resource    Base.robot
Library    json
Library    JSONLibrary

*** Test Cases ***

Cenário 1: Inserir cota pela api da porto
    [Tags]    porto    regressivo
    
    ${resp}=    Post request Porto
    ...         type_name=ByInsertQuotaPorto
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${BPM_SCHEMAS}/api_porto.json
    