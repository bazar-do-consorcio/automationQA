*** Settings ***
Resource    Base.robot
Library    json
Library    JSONLibrary

*** Test Cases ***

Cenário 1: Post Plan Of Contemplation Carrego
    [Tags]    planContemplation    regressivo
    
    ${resp}=    Post request with x-api-key
    ...         type_name=ByPlanContemplationCarrego
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/post_planContemplation.json

    ${quotas}=    Get request with x-api-key
    ...         type_name=ByQuotas
    
    Locate object    array=${quotas}    field=cota_id    value=${resp.json()}[cota_id]
    
    ${reactivation}=      Get request with x-api-key
    ...         type_name=ByGetReactivation
    
    Locate object    array=${reactivation}    field=cota_id    value=${resp.json()}[cota_id]


Cenário 2: Post Plan Of Contemplation Contemplação
    [Tags]    planContemplation    regressivo
    
    ${resp}=    Post request with x-api-key
    ...         type_name=ByPlanContemplation
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/post_planContemplation.json

    ${quotas}=    Get request with x-api-key
    ...         type_name=ByQuotas
    
    Locate object    array=${quotas}    field=cota_id    value=${resp.json()}[cota_id]

    ${ByQuotasWithoutInstallment}=    Get request with x-api-key
    ...         type_name=ByQuotasWithoutInstallment
    
    Locate object    array=${ByQuotasWithoutInstallment}    field=cota_id    value=${resp.json()}[cota_id]
    
    ${assetChange}=      Get request with x-api-key
    ...         type_name=ByGetAssetChanges
    
    Locate object    array=${assetChange}    field=cota_id    value=${resp.json()}[cota_id]