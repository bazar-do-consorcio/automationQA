*** Settings ***
Resource    ../Base.robot
Library    RequestsLibrary
Library    FakerLibrary       locale=pt_BR

*** Keywords ***

Get request with Token
    [Arguments]    ${type_name}

    ${headers}    Create Dictionary
    ...    Content-Type=application/json
    ...    token=${TOKEN}[${type_name}]

    Create Session
    ...    alias=get_request
    ...    url=${BPM_BASE}
    ...    headers=${headers}

    ${resp}=    GET On Session
    ...    alias=get_request
    ...    url=${URI}[${type_name}]
    
    [Return]    ${resp}
    
Post request Porto
    [Arguments]    ${type_name}

    ${headers}    Create Dictionary
    ...    Content-Type=application/json
    
    ${body}    Load Json From File    ${BODY}[${type_name}]

    ${name}     FakerLibrary.Name
    ${cpf}      FakerLibrary.cpf
    ${uuid}     Generate uuid quota
    ${email}    Gerar email valido

    ${body}    Update Value To Json    ${body}    $.data.name    ${name}
    ${body}    Update Value To Json    ${body}    $.data.cpf    ${cpf}
    ${body}    Update Value To Json    ${body}    $.data.email    ${email}
    ${body}    Update Value To Json    ${body}    $.data.uuid    ${uuid}
    
    Create Session
    ...    alias=post_request
    ...    url=${BPM_BASE}
    ...    headers=${headers}

    ${resp}=    POST On Session
    ...    alias=post_request
    ...    url=${URI}[${type_name}]
    ...    json=${body}
    
    Set Global Variable    ${name_user}    ${name}
    
    [Return]    ${resp}