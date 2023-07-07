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

