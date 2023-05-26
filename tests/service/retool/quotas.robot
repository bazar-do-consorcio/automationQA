*** Settings ***
Resource    Base.robot
Resource    keywords/retool.robot
Library    json
Library    JSONLibrary

*** Test Cases ***

Cenário 1: Get Quotas
    [Tags]    quotas    regressivo
    
    ${resp}=    Get request with x-api-key
    ...         type_name=ByQuotas
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/quotas.json

Cenário 2: Get Quota
    [Tags]    quotas    regressivo
    
    ${resp}=    Get request with x-api-key
    ...         type_name=ByQuota
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/extrato.json