const Faker = require('faker')
const faker = require('faker-br')

const el = require('./elements').ELEMENTS;
const el2 = require('./elements').VALUE;


class CadastroPJ {
    


    criarNovaConta() {
        //Criar nova conta
        cy.visit('https://staging.bazardoconsorcio.com.br/')
        cy.get('header > nav > ul > li:nth-child(5) > a').click()
        cy.wait(5000)
        cy.contains('Qual administradora você deseja consultar?')
        cy.contains('Criar nova conta').click({ force: true })
    }

    administradoraBradesco() {
        //Escolher administradora
        cy.get('body > main > .site-sell-form > fieldset > #quota_manager_id').select('3')
        cy.get('.buttons > input').click({ force: true })
    }

    administradoraItau() {
        //Escolher administradora
        cy.get('body > main > .site-sell-form > fieldset > #quota_manager_id').select('4')
        cy.get('.buttons > input').click({ force: true })
    }

    administradoraEmbracon() {
        //Escolher administradora
        cy.get('body > main > .site-sell-form > fieldset > #quota_manager_id').select('5')
        cy.get('.buttons > input').click({ force: true })
    }

    administradoraHonda() {
        //Escolher administradora
        cy.get('body > main > .site-sell-form > fieldset > #quota_manager_id').select('6')
        cy.get('.buttons > input').click({ force: true })
    }

    administradoraVolkswagen() {
        //Escolher administradora
        cy.get('body > main > .site-sell-form > fieldset > #quota_manager_id').select('7')
        cy.get('.buttons > input').click({ force: true })
    }


    administradoraPortoSeguro() {
        //Escolher administradora
        cy.get('body > main > .site-sell-form > fieldset > #quota_manager_id').select('8')
        cy.get('.buttons > input').click({ force: true })
    }

    administradoraRodobens() {
        //Escolher administradora
        cy.get('body > main > .site-sell-form > fieldset > #quota_manager_id').select('9')
        cy.get('.buttons > input').click({ force: true })
    }

    administradoraDisal() {
        //Escolher administradora
        cy.get('body > main > .site-sell-form > fieldset > #quota_manager_id').select('10')
        cy.get('.buttons > input').click({ force: true })
    }

    administradoraBB() {
        //Escolher administradora
        cy.get('body > main > .site-sell-form > fieldset > #quota_manager_id').select('11')
        cy.get('.buttons > input').click({ force: true })
    }

    administradoraSantander() {
        //Escolher administradora
        cy.get('body > main > .site-sell-form > fieldset > #quota_manager_id').select('12')
        cy.get('.buttons > input').click({ force: true })
    }

    administradoraXPTO() {
        //Escolher administradora
        cy.get('body > main > .site-sell-form > fieldset > #quota_manager_id').select('13')
        cy.get('.buttons > input').click({ force: true })
    }

    administradoraCaixa() {
        //Escolher administradora
        cy.get('body > main > .site-sell-form > fieldset > #quota_manager_id').select('2')
        cy.get('.buttons > input').click({ force: true })
    }

    administradoraChevrolet() {
        //Escolher administradora
        cy.get('body > main > .site-sell-form > fieldset > #quota_manager_id').select('14')
        cy.get('.buttons > input').click({ force: true })
    }

    pessoaJuridica() {
        //Pessoa fisica ou [Juridica]
        cy.get('main > .site-sell-form > fieldset > .radio-buttons > label:nth-child(5)').click()

    }

    formularioPessoaJuridica() {
        //Formulario de cadastro pessoa fisica
        cy.get('main > .site-sell-form > fieldset > #customer-form > #customer_name').type('Empresa Teste')
        cy.get('main > .site-sell-form > fieldset > #customer-form > #customer_cnpj').type('52.223.926/0001-40')
        cy.get('main > .site-sell-form > fieldset > #customer-form > #customer_email').type(Faker.internet.email(), {force: true})
        cy.get('#customer_phones_attributes_0_identifier').type('11999999999')
        cy.get('body > main > .site-sell-form > .buttons > input').click({force: true})

    }

    anexarExtrato() {
        //Anexar extrato
        cy.wait(2000)
        cy.get('#quota_extract').selectFile('cypress/fixtures/arquivo.jpg', { force: true })
        cy.get('.buttons > input').click({ force: true })

    }

    cota() {
        cy.get('#optin_group').type('abcde')
        cy.get('#optin_number').type('123456')
        cy.get('.buttons > input').click({ force: true })
    }

    criarSenha() {
        //Criar senha
        cy.get('#customer_password').type('V@nderlarkin12')
        cy.get('#customer_password_confirmation').type('V@nderlarkin12')

    }

    aceitarTermos() {
        //Aceitar termos
        cy.get('#customer_terms').click({ force: true })

    }

    botaoCriarConta() {
        //Criar conta
        cy.get('.buttons > input').click({ force: true })

    }

    mensagemSucesso() {
        //Verificarção de mensagem de sucesso
        cy.contains('Conta cadastrada')
    }
}

export default new CadastroPJ();