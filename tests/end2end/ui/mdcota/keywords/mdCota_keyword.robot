*** Settings ***
Resource    ../Base.robot
Resource    ../../../../service/mdCota/keywords/mdCota-mdOferta.robot

*** Keywords ***
Incluo uma oferta no mdOferta ${type_offer}
    
    IF    '${type_offer}' == 'Mar Aberto'

        ${resp}=    Post request mdCota
        ...         type_name=ByQuotasMD
        ...         qtd=1
    
    Status Should Be    201    ${resp}

    ELSE

        ${resp}=    Post request mdCota
        ...         type_name=ByPricingQuery
        ...         qtd=1

        Sleep    2 minutes  

        ${resp}=    Post request mdCota
        ...         type_name=ByDataSensitive
        ...         qtd=1
    
        Status Should Be    201    ${resp}
        
    END
    
    ${email_user}=    Set Variable    ${email}
    Set Global Variable    ${email_user}
    
    Sleep    3 minutes

