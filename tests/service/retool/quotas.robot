*** Settings ***
Resource    Base.robot
Library    json
Library    JSONLibrary

*** Test Cases ***

Cenário 1: Get Quotas
    [Tags]    quotas    regressivo
    
    ${resp}=    Get request with x-api-key
    ...         type_name=ByQuotas
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/quotas.json

Cenário 2: Get Quotas with cota_adm
    [Tags]    quotas    regressivo

    ${get}=    Get request with x-api-key
    ...         type_name=ByQuotas
    
    ${resp}=    Get request with x-api-key
    ...         type_name=ByQuotasWithCotaAdm
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/get_quotasWithCotaAdm.json

Cenário 3: Get Quotas without installment
    [Tags]    quotas    regressivo
    
    ${resp}=    Get request with x-api-key
    ...         type_name=ByQuotasWithoutInstallment
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/quotas.json

