import documentation from '../support/pages/documentacao/index'


describe('Documentação', function () {
   beforeEach(() => {
      cy.clearCookies()
      cy.login4()
   })

   it('Conta bancaria invalida e nome invalido', function () {
      //Abrir menu
      cy.get('.header-toggler > label').click({ force: true })
      //Clicar em Documentação
      cy.get('.documentation > a > span').click({ force: true })
      //Fechar menu
      cy.get('.header-toggler > label').dblclick({ force: true })
      //Clicar em Dados bancarios
      cy.get('section > a').click()
      //Selecionar banco
      cy.get('#customer_external_validation_banking_account_bank').select('341', {force: true})
      //Tipo da conta
      cy.get('#customer_external_validation_banking_account_account_type').select('checking_account', {force: true})
      //Escrever agencia
      cy.get('#customer_external_validation_banking_account_agency').type('1')
      //Escrever conta
      cy.get('#customer_external_validation_banking_account_account').type('2')
      //Escrever digito
      cy.get('#customer_external_validation_banking_account_account_digit').type('3')
      //Clicar em Salvar
      cy.get('[type="submit"]').click()
      //Verificar mensagens de erro
      cy.contains('Nome informado não coincide com o nome no Documento.')
      cy.contains('Agência, conta ou dígito verificador da conta inválido.')
   })

})