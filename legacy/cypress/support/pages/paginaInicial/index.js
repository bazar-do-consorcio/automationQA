const el = require('./elements').ELEMENTS;
const el2 = require('./elements').VALUE;


class homepage {
    userLogado() {
        //Verificar se foi logado verificando mensagens de sucesso
        cy.contains(el2.welcome)
        cy.contains(el2.loginSuccess)
    }

    accessButtons() {
        //Acessar os botoes na tela inicial
        cy.get(el.buyQuote).click()
    }

    backHome() {
        //Voltar para tela inicial
        cy.get(el.back).click({ force: true })
    }

    collapsedMenu() {
        //Clicar no x para colapsar menu
        cy.get(el.collapse).dblclick({ force: true })
    }

    tooltipsText() {
        //Exibir textos das tooltips
        cy.wait(1000)
        cy.get(el.tooltip1).trigger('mouseover')
        cy.contains(el2.Ineligible)
        cy.wait(1000)
        cy.get(el.tooltip2).trigger('mouseover')
        cy.contains(el2.Validated)
    }

    scroll() {
        //scroll para localizar etapa de dados bancarios
        cy.get(el.object).scrollTo('bottom')
    }

    bankDatas() {
        //Ver dados bancarios
        cy.contains(el2.bankButton).click({ force: true })
    }

}

export default new homepage();