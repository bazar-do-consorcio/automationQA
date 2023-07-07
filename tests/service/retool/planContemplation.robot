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

Cenário 2: Post Plan Of Contemplation Contemplação
    [Tags]    planContemplation    regressivo
    
    ${resp}=    Post request with x-api-key
    ...         type_name=ByPlanContemplation
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/post_planContemplation.json