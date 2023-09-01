*** Settings ***
Resource    Base.robot
Library    json
Library    JSONLibrary

*** Test Cases ***

Cenário 1: Get Payment
    [Tags]    payment    regressivo
    
    ${resp}=    Get request with x-api-key
    ...         type_name=ByGetPayment
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/get_payment.json

Cenário 2: Post Payment
    [Tags]    payment    regressivo
    
    ${resp}=    Post request with x-api-key
    ...         type_name=ByPostPayment
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/post_payment.json

Cenário 3: Patch Payment
    [Tags]    payment    regressivo
    
    ${get}=    Post request with x-api-key
    ...         type_name=ByPostPayment
    
    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchPayment
    ...         id=${get.json()}[boleto_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_payment.json