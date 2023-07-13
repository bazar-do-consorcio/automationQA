*** Settings ***
Resource    Base.robot
Library    json
Library    JSONLibrary

*** Test Cases ***

Cenário 1: Get bids
    [Tags]    bids    regressivo
    
    ${resp}=    Get request with x-api-key
    ...         type_name=ByGetBids
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/get_bids.json

Cenário 2: Patch bids status APTO OFERTAR LANCE
    [Tags]    bids    regressivo
    
    ${get}=    Get request with x-api-key
    ...         type_name=ByGetBids
    
    Set Global Variable    ${status}    APTO OFERTAR LANCE

    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchBids
    ...         id=${get.json()}[0][gestao_lance_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_bids.json

Cenário 3: Patch bids status NAO APTO OFERTAR LANCE
    [Tags]    bids    regressivo
    
    ${get}=    Get request with x-api-key
    ...         type_name=ByGetBids
    
    Set Global Variable    ${status}    NAO APTO OFERTAR LANCE

    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchBids
    ...         id=${get.json()}[0][gestao_lance_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_bids.json

Cenário 4: Patch bids status LANCE OFERTADO
    [Tags]    bids    regressivo
    
    ${get}=    Get request with x-api-key
    ...         type_name=ByGetBids
       
    ${locate}=    Locate object With Return    array=${get}    field=gestao_lance_id    value=${get.json()}[0][gestao_lance_id]
    ${data_assembleia}=    Set Variable       ${locate}[data_assembleia] 

    Log    ${data_assembleia}
    Set Global Variable    ${data_assembleia}

    Set Global Variable    ${status}    LANCE OFERTADO

    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchBids
    ...         id=${get.json()}[0][gestao_lance_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_bids.json

Cenário 5: Patch bids status LANCE CONTEMPLADO
    [Tags]    bids    regressivo
    
    ${get}=    Get request with x-api-key
    ...         type_name=ByGetBids
    
    Set Global Variable    ${status}    LANCE CONTEMPLADO

    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchBids
    ...         id=${get.json()}[0][gestao_lance_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_bids.json
    
Cenário 6: Patch bids status LANCE NAO CONTEMPLADO
    [Tags]    bids    regressivo
    
    ${get}=    Get request with x-api-key
    ...         type_name=ByGetBids
    
    Set Global Variable    ${status}    LANCE NAO CONTEMPLADO

    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchBids
    ...         id=${get.json()}[0][gestao_lance_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_bids.json

Cenário 7: Patch bids status AGUARDANDO PAGAMENTO LANCE
    [Tags]    bids    regressivo
    
    ${get}=    Get request with x-api-key
    ...         type_name=ByGetBids
    
    Set Global Variable    ${status}    AGUARDANDO PAGAMENTO LANCE

    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchBids
    ...         id=${get.json()}[0][gestao_lance_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_bids.json

Cenário 8: Patch bids status ERRO NO PAGAMENTO
    [Tags]    bids    regressivo
    
   ${get}=    Get request with x-api-key
    ...         type_name=ByGetBids
    
    Set Global Variable    ${status}    ERRO NO PAGAMENTO

    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchBids
    ...         id=${get.json()}[0][gestao_lance_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_bids.json

Cenário 9: Patch bids status PAGAMENTO FINALIZADO
    [Tags]    bids    regressivo
    
    ${get}=    Get request with x-api-key
    ...         type_name=ByGetBids
    
    Set Global Variable    ${status}    PAGAMENTO FINALIZADO

    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchBids
    ...         id=${get.json()}[0][gestao_lance_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_bids.json