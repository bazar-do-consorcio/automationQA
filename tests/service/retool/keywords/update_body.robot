*** Settings ***
Resource    ../Base.robot

*** Keywords ***

Update Body by asset_changes
    [Arguments]    ${body}
     IF    "${status}" == "TROCA SOLICITADA"
            ${body}    Update Value To Json    ${body}    $.status_bem_atual_desc    ${status}
            ${body}    Delete Object From Json    ${body}    $.bem_resposta_adm     

        ELSE IF    "${status}" == "BEM CORRETO"
            ${body}    Update Value To Json    ${body}    $.status_bem_atual_desc    ${status}
            ${body}    Update Value To Json    ${body}    $.bem_resposta_adm    25000

        ELSE IF    "${status}" == "TROCA APROVADA"
            ${body}    Update Value To Json    ${body}    $.status_bem_atual_desc    ${status}
            ${body}    Update Value To Json    ${body}    $.bem_resposta_adm    25000

        ELSE IF    "${status}" == "ANALISE PRICING"
            ${body}    Update Value To Json    ${body}    $.status_bem_atual_desc    ${status}
            ${body}    Delete Object From Json    ${body}    $.bem_resposta_adm   

        ELSE IF    "${status}" == "SOLICITAR TROCA"
            ${body}    Update Value To Json    ${body}    $.status_bem_atual_desc    ${status}
            ${body}    Delete Object From Json    ${body}    $.bem_resposta_adm   

        ELSE IF    "${status}" == "TROCA RECUSADA"
            ${body}    Update Value To Json    ${body}    $.status_bem_atual_desc    ${status}
            ${body}    Delete Object From Json    ${body}    $.bem_resposta_adm   

        ELSE IF    "${status}" == "TROCA EXPIRADA"
            ${body}    Update Value To Json    ${body}    $.status_bem_atual_desc    ${status}
            ${body}    Delete Object From Json    ${body}    $.bem_resposta_adm   

        END   
    [Return]    ${body}

Update Body by payment
    [Arguments]    ${body}

    ${boleto}=    Generate Boleto
    ${uuid}=    Generate uuid quota
    ${body}    Update Value To Json    ${body}    $.linha_digitavel    ${boleto}
    ${body}    Add Object To Json    ${body}    $.gestao_code    ${uuid}

    [Return]    ${body}

Update Body by PlanContemplation
    [Arguments]    ${body}

    ${cota_adm}=    Generate uuid quota
    ${body}    Update Value To Json    ${body}    $.input.cota.cota_adm    ${cota_adm}        
    ${body}    Update Value To Json    ${body}    $.cota_adm    ${cota_adm}

    [Return]    ${body}

Update Body by Reactivation
    [Arguments]    ${body}

    ${body}    Update Value To Json    ${body}    $.reativacao_status_type_desc    ${status}  

    [Return]    ${body}

Update Body by bids
    [Arguments]    ${body}

    ${dateTime}=    Generate dateTime Format

    IF    "${status}" == "LANCE OFERTADO"
            ${body}    Update Value To Json    ${body}    $.status_type_gestao_lances_desc    ${status}
            ${body}    Update Value To Json    ${body}    $.data_coleta_feedback    ${dateTime} 
            ${body}    Add Object To Json    ${body}    $.data_assembleia   ${data_assembleia}
    ELSE
            ${body}    Update Value To Json    ${body}    $.status_type_gestao_lances_desc    ${status}
            ${body}    Update Value To Json    ${body}    $.data_coleta_feedback    ${dateTime}     
    END

    [Return]    ${body}