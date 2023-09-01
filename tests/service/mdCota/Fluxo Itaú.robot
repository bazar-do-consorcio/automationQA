*** Settings ***
Resource    Base.robot
Library    json
Library    JSONLibrary
Library    ../../../robotEnv/lib/site-packages/robot/libraries/Dialogs.py

*** Test Cases ***

Cenário 1: Criação de cota via pricingQuery
    [Tags]    mdCota    pricingQuery    regressivo
    
    ${resp}=    Post request mdCota
    ...         type_name=ByPricingQuery
    ...         qtd=${QTD_QUOTAS}
    
    Status Should Be    201    ${resp}

Cenário 2: Criação de cota via quotas
    [Tags]    mdCota    quotasMD    regressivo
    
    ${resp}=    Post request mdCota
    ...         type_name=ByQuotasMD
    ...         qtd=${QTD_QUOTAS}
    
    Status Should Be    201    ${resp}

Cenário 3: Criação de cota via dataSensitive
    [Tags]    mdCota    dataSensitive    regressivo
    
    ${resp}=    Post request mdCota
    ...         type_name=ByPricingQuery
    ...         qtd=${QTD_QUOTAS}

    Sleep    3 minutes  

    ${resp}=    Post request mdCota
    ...         type_name=ByDataSensitive
    ...         qtd=${QTD_QUOTAS}
    
    Status Should Be    201    ${resp}

    