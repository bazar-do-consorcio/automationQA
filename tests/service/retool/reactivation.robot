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

Cenário 2: Patch Reactivation status SOLICITAR REATIVACAO
    [Tags]    reactivation    regressivo
    
    ${post}=    Post request with x-api-key
    ...         type_name=ByPlanContemplationCarrego

    ${get}=    Get request with x-api-key
    ...         type_name=ByGetReactivation
    
    Set Global Variable    ${status}    SOLICITAR REATIVACAO
    
    ${locate}=    Locate object with Return    array=${get}    field=reativacao_status_type_desc    value=${status}

    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchReactivation
    ...         id=${locate}[gestao_reativacao_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_reactivation.json


Cenário 3: Patch Reactivation status REATIVACAO SOLICITADA
    [Tags]    reactivation    regressivo
    
    ${post}=    Post request with x-api-key
    ...         type_name=ByPlanContemplationCarrego

    ${get}=    Get request with x-api-key
    ...         type_name=ByGetReactivation
    
    Set Global Variable    ${status}    REATIVACAO SOLICITADA
    
    ${locate}=    Locate object with Return    array=${get}    field=reativacao_status_type_desc    value=SOLICITAR REATIVACAO

    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchReactivation
    ...         id=${locate}[gestao_reativacao_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_reactivation.json

Cenário 4: Patch Reactivation status AGUARDANDO PAGAMENTO REATIVACAO
    [Tags]    reactivation    regressivo
    
    ${post}=    Post request with x-api-key
    ...         type_name=ByPlanContemplationCarrego

    ${get}=    Get request with x-api-key
    ...         type_name=ByGetReactivation
    
    Set Global Variable    ${status}    AGUARDANDO PAGAMENTO REATIVACAO
    
    ${locate}=    Locate object with Return    array=${get}    field=reativacao_status_type_desc    value=REATIVACAO SOLICITADA

    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchReactivation
    ...         id=${locate}[gestao_reativacao_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_reactivation.json

Cenário 5: Patch Reactivation status REATIVACAO NEGADA
    [Tags]    reactivation    regressivo
    
    ${post}=    Post request with x-api-key
    ...         type_name=ByPlanContemplationCarrego

    ${get}=    Get request with x-api-key
    ...         type_name=ByGetReactivation
    
    Set Global Variable    ${status}    REATIVACAO NEGADA
    
    ${locate}=    Locate object with Return    array=${get}    field=reativacao_status_type_desc    value=AGUARDANDO PAGAMENTO REATIVACAO

    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchReactivation
    ...         id=${locate}[gestao_reativacao_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_reactivation.json

Cenário 6: Patch Reactivation status ERRO PAGAMENTO
    [Tags]    reactivation    regressivo
    
    ${post}=    Post request with x-api-key
    ...         type_name=ByPlanContemplationCarrego

    ${get}=    Get request with x-api-key
    ...         type_name=ByGetReactivation
    
    Set Global Variable    ${status}    ERRO NO PAGAMENTO
    
    ${locate}=    Locate object with Return    array=${get}    field=boleto_status_type_desc    value=PAGAMENTO SOLICITADO

    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchReactivation
    ...         id=${locate}[gestao_reativacao_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_reactivation.json

Cenário 7: Patch Reactivation status REATIVACAO CONFIRMADA
    [Tags]    reactivation    regressivo
    
    ${post}=    Post request with x-api-key
    ...         type_name=ByPlanContemplationCarrego

    ${get}=    Get request with x-api-key
    ...         type_name=ByGetReactivation
    
    Set Global Variable    ${status}    REATIVACAO CONFIRMADA
    
    ${locate}=    Locate object with Return    array=${get}    field=boleto_status_type_desc    value=PAGAMENTO SOLICITADO

    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchReactivation
    ...         id=${locate}[gestao_reativacao_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_reactivation.json
