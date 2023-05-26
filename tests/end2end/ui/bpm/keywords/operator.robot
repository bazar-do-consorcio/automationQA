*** Settings ***
Library    SeleniumLibrary
Resource    ../Base.robot


*** Keywords ***      

Clicar no botão Kanban
    Wait Until Element Is Enabled    ${opc_kanban}    ${GENERAL_TIMEOUT}
    Click Element    ${opc_kanban}
    Wait Until Element Is Enabled    ${link_kanban}    ${GENERAL_TIMEOUT}
    Click Element    ${link_kanban}
    Wait Until Element Is Enabled    ${card_kanban}    ${GENERAL_TIMEOUT}

Seleciono o tipo de consulta ${option_attribute}
    Click Element    ${options_attributes}

    IF    ${option_attribute} == "NomeProprietario"
        
        Click Element    ${option_OwnersName}

    ELSE IF    ${option_attribute} == "CPFProprietario"

        Click Element    ${option_OwnersCPF}
                
    END

Pesquiso informando o dado de pesquisa ${value_search} ${coluna}
    ${card}    Card Kanban Especifico    ${coluna}    ${value_search}
    
    Input Text    ${input_search}    ${value_search}
    Click Element    ${btn_pesquisar} 
    Wait Until Element Is Enabled    ${card}    ${GENERAL_TIMEOUT}