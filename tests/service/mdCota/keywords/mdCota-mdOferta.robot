*** Settings ***
Resource    ../Base.robot
Resource    update_body.robot
Library    RequestsLibrary
Library    FakerLibrary       locale=pt_BR

*** Keywords ***
    
Post request mdCota
    [Arguments]    ${type_name}
    ...            ${qtd}

    ${headers}    Create Dictionary
    ...    Content-Type=application/json    
    ...    x-api-key=${TOKEN}

    ${template}=    Load Json From File    file_name=${BODY}[templateMdCota]     encoding="utf8"   
    Set Global Variable    ${template}
    
    ${body}    Load Json From File    file_name=${BODY}[${type_name}]    encoding="utf8"

    ${body}=    Update Body by mdCota    body=${body}    qtd=${qtd}    type=${type_name}
    
    Create Session
    ...    alias=post_request
    ...    url=
    ...    headers=${headers}

    ${resp}=    POST On Session
    ...    alias=post_request
    ...    url=${URI}[${type_name}]
    ...    json=${body}
    
    [Return]    ${resp}