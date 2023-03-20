*** Variables ***

#opções login
${opc_outrasAdms}    xpath://main/div/a[1]
${opc_itau}    xpath://main/div/a[2]

#Dados Login
${login_email}    id:customer_email
${login_password}    id:customer_password
${btn_logar}    xpath://input[@data-disable-with='Entrar']

${alert_login}    xpath://p[@class='notice']