*** Settings ***
Resource    ../Base.robot
Library    RequestsLibrary
Library    FakerLibrary

*** Keywords ***

Get request with x-api-key
    [Arguments]    ${type_name}

    ${headers}    Create Dictionary
    ...    Content-Type=application/json
    ...    x-api-key=${TOKEN}

    Create Session
    ...    alias=get_request
    ...    url=${BPM_BASE}
    ...    headers=${headers}

    ${resp}=    GET On Session
    ...    alias=get_request
    ...    url=${URI}[${type_name}]
    
    [Return]    ${resp}
    
Post request with x-api-key
    [Arguments]    ${type_name}

    ${headers}    Create Dictionary
    ...    Content-Type=application/json
    ...    x-api-key=${TOKEN}
    
    ${body}    Load Json From File    ${BODY}[${type_name}]

    IF    "${type_name}" == "ByPostPayment"
        ${boleto}=    Generate Boleto
        ${body}    Update Value To Json    ${body}    $.linha_digitavel    ${boleto}
    END

    IF    "${type_name}" == "ByPlanContemplation"
        ${cota_adm}=    Generate uuid quota
        ${body}    Update Value To Json    ${body}    $.input.cota.cota_adm    ${cota_adm}        
        ${body}    Update Value To Json    ${body}    $.cota_adm    ${cota_adm}
    END

    Create Session
    ...    alias=post_request
    ...    url=${BPM_BASE}
    ...    headers=${headers}

    ${resp}=    POST On Session
    ...    alias=post_request
    ...    url=${URI}[${type_name}]
    ...    json=${body}
    
    [Return]    ${resp}

Patch request with x-api-key
    [Arguments]    ${type_name}    ${id}

    ${headers}    Create Dictionary
    ...    Content-Type=application/json
    ...    x-api-key=${TOKEN}

    ${body}    Load Json From File    ${BODY}[${type_name}]

    IF    "${type_name}" == "ByPatchAssetChanges"
        
        IF    "${status}" == "TROCA SOLICITADA"
            ${body}    Update Value To Json    ${body}    $.status_bem_atual_desc    ${status}
            ${body}    Delete Object From Json    ${body}    $.bem_resposta_adm     

        ELSE IF    "${status}" == "BEM CORRETO"
            ${body}    Update Value To Json    ${body}    $.status_bem_atual_desc    ${status}
            ${body}    Update Value To Json    ${body}    $.bem_resposta_adm    25000

        ELSE IF    "${status}" == "TROCA APROVADA"
            ${body}    Update Value To Json    ${body}    $.status_bem_atual_desc    ${status}
            ${body}    Update Value To Json    ${body}    $.bem_resposta_adm    25000

        ELSE IF    "${status}" == "ANALISE PRICING"
            ${body}    Update Value To Json    ${body}    $.status_bem_atual_desc    ${status}
            ${body}    Delete Object From Json    ${body}    $.bem_resposta_adm   

        ELSE IF    "${status}" == "SOLICITAR TROCA"
            ${body}    Update Value To Json    ${body}    $.status_bem_atual_desc    ${status}
            ${body}    Delete Object From Json    ${body}    $.bem_resposta_adm   

        ELSE IF    "${status}" == "TROCA RECUSADA"
            ${body}    Update Value To Json    ${body}    $.status_bem_atual_desc    ${status}
            ${body}    Delete Object From Json    ${body}    $.bem_resposta_adm   

        ELSE IF    "${status}" == "TROCA EXPIRADA"
            ${body}    Update Value To Json    ${body}    $.status_bem_atual_desc    ${status}
            ${body}    Delete Object From Json    ${body}    $.bem_resposta_adm   

        END   
        
    END

    IF    "${type_name}" == "ByPatchPayment"
        ${boleto}=    Generate Boleto
        ${body}    Update Value To Json    ${body}    $.linha_digitavel    ${boleto}
    END

    Create Session
    ...    alias=patch_request
    ...    url=${BPM_BASE}
    ...    headers=${headers}
    
    ${urls}=    Set Variable If
    ...    "${type_name}" == "ByPatchAssetChanges"    ${URI}[${type_name}]/${id}/asset_changes
    ...    "${type_name}" != "ByPatchAssetChanges"    ${URI}[${type_name}]/${id}

    ${resp}=    PATCH On Session
    ...    alias=patch_request
    ...    url=${urls}
    ...    json=${body}
    
    [Return]    ${resp}