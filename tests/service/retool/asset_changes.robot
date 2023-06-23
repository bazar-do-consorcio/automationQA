*** Settings ***
Resource    Base.robot
Library    json
Library    JSONLibrary

*** Test Cases ***

Cenário 1: Get AssetChanges
    [Tags]    assetChanges    regressivo
    
    ${resp}=    Get request with x-api-key
    ...         type_name=ByGetAssetChanges
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/get_assetChanges.json

Cenário 2: Patch AssetChanges with status TROCA SOLICITADA
    [Tags]    assetChanges    regressivo
    
    Set Global Variable    ${status}    TROCA SOLICITADA

    ${get}=    Get request with x-api-key
    ...        type_name=ByGetAssetChanges
    
    Skip If    ${get.json()} == []    msg="Not Found Quotas to change"

    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchAssetChanges
    ...         id=${get.json()}[0][cota_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_assetChanges.json

Cenário 3: Patch AssetChanges with status BEM CORRETO
    [Tags]    assetChanges    regressivo
    
    Set Global Variable    ${status}    BEM CORRETO

    ${get}=    Get request with x-api-key
    ...        type_name=ByGetAssetChanges

    Skip If    ${get.json()} == []    msg="Not Found Quotas to change"
    
    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchAssetChanges
    ...         id=${get.json()}[0][cota_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_assetChanges.json

Cenário 4: Patch AssetChanges with status TROCA APROVADA
    [Tags]    assetChanges    regressivo
    
    Set Global Variable    ${status}    TROCA APROVADA

    ${get}=    Get request with x-api-key
    ...        type_name=ByGetAssetChanges

    Skip If    ${get.json()} == []    msg="Not Found Quotas to change"
    
    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchAssetChanges
    ...         id=${get.json()}[0][cota_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_assetChanges.json

Cenário 5: Patch AssetChanges with status ANALISE PRICING
    [Tags]    assetChanges    regressivo
    
    Set Global Variable    ${status}    ANALISE PRICING

    ${get}=    Get request with x-api-key
    ...        type_name=ByGetAssetChanges

    Skip If    ${get.json()} == []    msg="Not Found Quotas to change"
    
    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchAssetChanges
    ...         id=${get.json()}[0][cota_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_assetChanges.json

Cenário 6: Patch AssetChanges with status SOLICITAR TROCA
    [Tags]    assetChanges    regressivo
    
    Set Global Variable    ${status}    SOLICITAR TROCA

    ${get}=    Get request with x-api-key
    ...        type_name=ByGetAssetChanges

    Skip If    ${get.json()} == []    msg="Not Found Quotas to change"
    
    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchAssetChanges
    ...         id=${get.json()}[0][cota_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_assetChanges.json

Cenário 7: Patch AssetChanges with status TROCA RECUSADA
    [Tags]    assetChanges    regressivo
    
    Set Global Variable    ${status}    TROCA RECUSADA

    ${get}=    Get request with x-api-key
    ...        type_name=ByGetAssetChanges

    Log    ${get.json()}

    Skip If    ${get.json()} == []    msg="Not Found Quotas to change"
    
    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchAssetChanges
    ...         id=${get.json()}[0][cota_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_assetChanges.json

Cenário 8: Patch AssetChanges with status TROCA EXPIRADA
    [Tags]    assetChanges    regressivo
    
    Set Global Variable    ${status}    TROCA EXPIRADA

    ${get}=    Get request with x-api-key
    ...        type_name=ByGetAssetChanges

    Skip If    ${get.json()} == []    msg="Not Found Quotas to change"
    
    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchAssetChanges
    ...         id=${get.json()}[0][cota_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_assetChanges.json