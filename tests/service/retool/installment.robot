*** Settings ***
Resource    Base.robot
Resource    keywords/retool_keywords.robot
Library    json
Library    JSONLibrary

*** Test Cases ***

Cenário 1: Get Installment
    [Tags]    installment    regressivo
    
    ${resp}=    Get request with x-api-key
    ...         type_name=ByGetInstallment
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/get_installment.json

Cenário 2: Post Installment
    [Tags]    installment    regressivo
    
    ${resp}=    Post request with x-api-key
    ...         type_name=ByPostInstallment
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/post_installment.json

Cenário 3: Patch Installment
    [Tags]    installment    regressivo

    ${get}=    Post request with x-api-key
    ...         type_name=ByPostInstallment
    
    ${resp}=    Patch request with x-api-key
    ...         type_name=ByPatchInstallment
    ...         id=${get.json()}[gestao_parcela_id]
    
    Status Should Be    200    ${resp}

    Validate Json By Schema File    ${resp.json()}  ${RETOOL_SCHEMAS}/patch_installment.json