import ofertas from '../support/pages/minhasOfertas/index'


describe('Ofertas', function () {
    beforeEach(() => {
        cy.clearCookies()
        cy.login()
    })

    it('Vender cota [itau]', function () {
        //Abrir menu
        cy.get('.header-toggler > label').click({ force: true })
        //Clicar em Minhas ofertas
        cy.get('.active_quota > a > span').click({ force: true })
        //Fechar menu
        cy.get('.header-toggler > label').click({ force: true })
        //Vender cota
        cy.contains('Vender nova Cota').click({ force: true })
        //Selecionar administradora [Itau]
        cy.wait(1000)
        cy.get('#quota_manager_id').select('4')
        //Clicar no botao de confirmar
        cy.get('[type="submit"]').click()
        //Preencher fomulario
        cy.get('#optin_group').type('asdfg')
        cy.get('#optin_number').type('12345')
        //Click em Confirmar
        cy.get('[type="submit"]').click()
        cy.contains('Obrigada por confiar na nossa experiência para vender sua cota! Já recebemos as informações da sua cota e estamos verificando a melhor oferta disponível.')
        //Clicar em contunuar
        cy.get('.information-box > div > a').click()
    })

    it('Cota inelegivel', function () {
        //Abrir menu
        cy.get('.header-toggler > label').click({ force: true })
        //Clicar em Minhas ofertas
        cy.get('.active_quota > a > span').click({ force: true })
        //Fechar menu
        cy.get('.header-toggler > label').click({ force: true })
        //Vender cota
        cy.contains('Vender nova Cota').click({ force: true })
        //Selecionar administradora [Itau]
        cy.wait(1000)
        cy.get('#quota_manager_id').select('3')
        //Clicar no botao de confirmar
        cy.get('[type="submit"]').click()
        //Preencher fomulario
        cy.get('#quota_extract').selectFile('cypress/fixtures/arquivo.jpg', { force: true })
        //Click em Confirmar
        cy.get('[type="submit"]').click()
        cy.contains('Infelizmente a sua cota não está disponível para avaliação no momento. Para mais informações, veja as observações contidas na sua cota ou entre contato com um de nossos consultores.')
        //Clicar em contunuar
        cy.get('.information-box > div > a').click()
    })

    it('Editar cota', function () {
        //Abrir menu
        cy.get('.header-toggler > label').click({ force: true })
        //Clicar em Minhas ofertas
        cy.get('.active_quota > a > span').click({ force: true })
        //Fechar menu
        cy.get('.header-toggler > label').click({ force: true })
        //Editar cota
        cy.get('a.secondary-style').click()
    })

    it('Ver detalhes da cota', function () {
        //Abrir menu
        cy.get('.header-toggler > label').click({ force: true })
        //Clicar em Minhas ofertas
        cy.get('.active_quota > a > span').click({ force: true })
        //Fechar menu
        cy.get('.header-toggler > label').click({ force: true })
        //Ver detalhes
        cy.get('footer > .section-toggler > label').click()
        
    })

})