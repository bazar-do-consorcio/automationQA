*** Settings ***
Resource    Base.robot
Library    json
Library    JSONLibrary

*** Test Cases ***

Cenário 1: Loop de inserções
    [Tags]    mdCota    Loop    regressivo
    
    ${count}    Set Variable    1
    ${qtds}    Set Variable     1
    
    WHILE    ${count} <= ${qtds}
        
    ${resps}=    Post request mdCota
    ...         type_name=ByPricingQuery
    ...         qtd=100
    
    Status Should Be    201    ${resps}
    
    ${respa}=    Post request mdCota
    ...         type_name=ByQuotasMD
    ...         qtd=100
    
    Status Should Be    201    ${respa}
    
    ${respt}=    Post request mdCota
    ...         type_name=ByPricingQuery
    ...         qtd=100

    Sleep    3 minutes  

    ${respf}=    Post request mdCota
    ...         type_name=ByDataSensitive
    ...         qtd=100
    
    Status Should Be    201    ${respf}



    ${count}=    Evaluate    ${count} + 1

    IF    ${count} <= ${qtds}
        
        Sleep    10 minutes

    END

    END