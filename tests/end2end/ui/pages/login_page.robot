*** Variables ***

#opções login
${opc_outrasAdms}    xpath://main/div/a[1]
${opc_itau}    xpath://main/div/a[2]

#customer Login
${login_email}    id:customer_email
${login_password}    id:customer_password
${btn_logar}    xpath://input[@data-disable-with='Entrar']

${alert_login}    xpath://p[@class='notice']

#user login
${user_email}    id:user_email
${user_password}    id:user_password



