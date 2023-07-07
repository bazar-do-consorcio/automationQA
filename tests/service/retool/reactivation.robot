*** Settings ***
Resource    Base.robot
Library    json
Library    JSONLibrary

*** Test Cases ***

Cenário 1: Get Reactivation
    [Tags]    reactivation    regressivo

    ${post}=    Post request with x-api-key
    ...         type_name=ByPlanContemplationCarrego
    
    ${resp}=    Get request with x-api-key
    ...         type_name=ByGetReactivation
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/get_reactivation.json

Cenário 2: Patch Reactivation
    [Tags]    reactivation    regressivo
    
    ${post}=    Post request with x-api-key
    ...         type_name=ByPlanContemplationCarrego

    ${get}=    Get request with x-api-key
    ...         type_name=ByGetReactivation

    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchReactivation
    ...         id=${get.json()}[2][gestao_reativacao_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_reactivation.json

    Should Not Be Equal    ${get.json()}[0][gestao_reativacao_id]    ${resp.json()}[gestao_reativacao_id]








