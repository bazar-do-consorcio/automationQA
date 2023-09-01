*** Settings ***
Resource    ../Base.robot
Resource    update_body.robot
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

        ${body}=    Update Body by payment    ${body}

    ELSE IF     "${type_name}" == "ByPlanContemplation" or "${type_name}" == "ByPlanContemplationCarrego"

        ${body}=    Update Body by PlanContemplation    ${body}

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
        
        ${body}=    Update Body by asset_changes    ${body}
        
        ELSE IF     "${type_name}" == "ByPatchPayment"

        ${body}=    Update Body by payment    ${body}

        ELSE IF     "${type_name}" == "ByPatchBids"

        ${body}=    Update Body by bids    ${body}

        ELSE IF     "${type_name}" == "ByPatchReactivation"

        ${body}=    Update Body by Reactivation    ${body}

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