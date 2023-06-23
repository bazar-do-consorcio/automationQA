*** Variables ***

#colunas kanban BPM Operador
${coluna_negociacao}    em_negociacao
${coluna_qualificacao}    qualificacao_de_leads


*** Keywords ***
#Administradora mar aberto
Selecionar adm mar aberto
    [Arguments]    ${adm}
    
    Set Test Variable    ${adms}    xpath://option[text()="${adm}"]
    [Return]    ${adms}