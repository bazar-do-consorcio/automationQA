*** Settings ***
Resource    ../Base.robot
Library    RequestsLibrary

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

    Create Session
    ...    alias=patch_request
    ...    url=${BPM_BASE}
    ...    headers=${headers}

    ${resp}=    PATCH On Session
    ...    alias=patch_request
    ...    url=${URI}[${type_name}]/${id}
    ...    json=${body}
    
    [Return]    ${resp}