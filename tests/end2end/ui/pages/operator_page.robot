*** Variables ***

#opções Operator
${opc_kanban}            xpath://li[@class='bid']
${link_kanban}           xpath://span[text()='Kanban de Ofertas']/..

#Opções de busca
${card_kanban}           xpath://a[@class='card-revealer']
${input_search}          id:search_value
${btn_pesquisar}         xpath://span[text()='Confirmar']/..
${options_attributes}    id:search_key
${option_OwnersName}     xpath://option[@value='owners::name']
${option_OwnersCPF}      xpath://option[@value='owners::cpf']
${option_OwnersEmail}      xpath://option[@value='owners::email']

*** Keywords ***

Card Kanban Especifico
    [Arguments]    ${coluna}
    ...            ${name}
     
    [Return]    xpath://li[@data-code="${coluna}"]/dl/dt[text()="${name}"]

