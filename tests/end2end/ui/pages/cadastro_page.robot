*** Variables ***


#Label de administradoras
${label_administradora}    id:manager_id
${option_itau}     xpath://option[text()="Itaú"]

#step dados do cliente
${btn_pf}    xpath://label[text()="Pessoa física"]
${btn_pj}    xpath://label[text()="Pessoa jurídica"]

${fld_name}    id:customer_name
${fld_cpf}    id:customer_cpf
${fld_cnpj}    id:customer_cnpj
${fld_email}    id:customer_email
${fld_numberCel}    id:customer_phones_attributes_0_identifier

#step dados da cota
${fld_group}    id:optin_group
${fld_numberQuota}  id:optin_number
${label_quotaContemplada}   xpath://option[text()="Contemplada"]
${label_quotaCancelada}    xpath://option[text()="Cancelada"]
${label_quotaAtiva}    xpath://option[text()="Ativa"]

#step senha
${fld_password}    id:customer_password
${fld_confirmPassword}    id:customer_password_confirmation
${check_termos}    xpath://label[@for="customer_terms"]/span

#msg criação da conta
${alert_confirmCreateAccount}    xpath://figure[@class="confirmation-screen"]

${btn_create}    xpath://input[@value="Criar conta"]
${btn_avancar}    xpath://input[@value="Avançar"]