//Page elements to perform actions

export const ELEMENTS = {
    link: 'https://staging.bazardoconsorcio.com.br/',
    loginButton: 'header > nav > ul > li:nth-child(5) > a',
    selectAdmin: 'body > main > .site-sell-form > fieldset > #quota_manager_id',
    buttonNextStep: '.buttons > input',
    choosePF: 'main > .site-sell-form > fieldset > .radio-buttons > label:nth-child(3)',
    userField: 'main > .site-sell-form > fieldset > #customer-form > #customer_name',
    cpfField: 'main > .site-sell-form > fieldset > #customer-form > #customer_cpf',
    emailField: 'main > .site-sell-form > fieldset > #customer-form > #customer_email',
    phoneField: 'main > .site-sell-form > fieldset > #customer-form > #customer_phones_attributes_0_identifier',
    extractButton: '#quota_extract',
    cotaField1: '#optin_group',
    cotaField2: '#optin_number',
    passwordField: '#customer_password',
    passwordConfirm: '#customer_password_confirmation',
    aceptTerm: '#customer_terms',
  

    otherAdmins: '.grid > :nth-child(1)',
    itauAdmin: '.grid > :nth-child(2)',
    inputUser: 'body > main > .devise-form > fieldset > #customer_email',
    inputPass: 'main > .devise-form > fieldset > .password-group > #customer_password',
    entrarButton: 'body > main > .devise-form > .buttons > input'
}

export const VALUE = {
    user: 'Teste Nome completo',
    celphone: '(11)9-9999-9999',
    cota1: 'abcde',
    cota2: '123456',
    password: 'V@nderlarkin14',
    tituloDeVerificação: 'Qual administradora você deseja consultar?',
    mensageSucess: 'Conta cadastrada',
    
    criarConta: 'Criar nova conta',
    user1: 'danielli+1@bazardoconsorcio.com.br',
    user3: 'danielli+3@bazardoconsorcio.com.br',
    
}
