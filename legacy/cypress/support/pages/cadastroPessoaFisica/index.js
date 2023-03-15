const Faker = require('faker')
const faker = require('faker-br')

const el = require('./elements').ELEMENTS;
const el2 = require('./elements').VALUE;

class CadastroPF {
    criarNovaConta() {
        //Criar nova conta
        cy.visit(el.link)
        cy.get(el.loginButton).click()
        cy.wait(5000)
        cy.contains(el2.tituloDeVerificação)
        cy.contains(el2.criarConta).click({ force: true })
    }

    administradoraBradesco() {
        //Escolher administradora
        cy.get(el.selectAdmin).select('3')
        cy.get(el.buttonNextStep).click({ force: true })
    }

    administradoraItau() {
        //Escolher administradora
        cy.get(el.selectAdmin).select('4')
        cy.get(el.buttonNextStep).click({ force: true })
    }

    administradoraEmbracon() {
        //Escolher administradora
        cy.get(el.selectAdmin).select('5')
        cy.get(el.buttonNextStep).click({ force: true })
    }

    administradoraHonda() {
        //Escolher administradora
        cy.get(el.selectAdmin).select('6')
        cy.get(el.buttonNextStep).click({ force: true })
    }

    administradoraVolkswagen() {
        //Escolher administradora
        cy.get(el.selectAdmin).select('7')
        cy.get(el.buttonNextStep).click({ force: true })
    }


    administradoraPortoSeguro() {
        //Escolher administradora
        cy.get(el.selectAdmin).select('8')
        cy.get(el.buttonNextStep).click({ force: true })
    }

    administradoraRodobens() {
        //Escolher administradora
        cy.get(el.selectAdmin).select('9')
        cy.get(el.buttonNextStep).click({ force: true })
    }

    administradoraDisal() {
        //Escolher administradora
        cy.get(el.selectAdmin).select('10')
        cy.get(el.buttonNextStep).click({ force: true })
    }

    administradoraBB() {
        //Escolher administradora
        cy.get(el.selectAdmin).select('11')
        cy.get(el.buttonNextStep).click({ force: true })
    }

    administradoraSantander() {
        //Escolher administradora
        cy.get(el.selectAdmin).select('12')
        cy.get(el.buttonNextStep).click({ force: true })
    }

    administradoraXPTO() {
        //Escolher administradora
        cy.get(el.selectAdmin).select('13')
        cy.get(el.buttonNextStep).click({ force: true })
    }

    administradoraCaixa() {
        //Escolher administradora
        cy.get(el.selectAdmin).select('2')
        cy.get(el.buttonNextStep).click({ force: true })
    }

    administradoraChevrolet() {
        //Escolher administradora
        cy.get(el.selectAdmin).select('14')
        cy.get(el.buttonNextStep).click({ force: true })

    }

    pessoaFisica() {
        //Pessoa [fisica] ou Juridica
        cy.get(el.choosePF).click()
   
    }

    formularioPessoaFisica() {
        //Formulario de cadastro pessoa fisica
        cy.get(el.userField).type(el2.user)
        cy.get(el.cpfField).type(faker.br.cpf())
        cy.get(el.emailField).type(Faker.internet.email(), {force: true})
        cy.get(el.phoneField).type(el2.celphone)
        cy.get(el.buttonNextStep).click({force: true})

    }

    anexarExtrato() {
        //Anexar extrato
        cy.wait(2000)
        cy.get(el.extractButton).selectFile('cypress/fixtures/arquivo.jpg', { force: true })
        cy.get(el.buttonNextStep).click({ force: true })

    }

    cota(){
        //Formulario de cota para Itau e Porto seguro
        cy.get(el.cotaField1).type(el2.cota1)
        cy.get(el.cotaField2).type(el2.cota2)
        cy.get(el.buttonNextStep).click({ force: true })
    }

    criarSenha() {
        //Criar senha
        cy.get(el.passwordField).type(el2.password)
        cy.get(el.passwordConfirm).type(el2.password)

    }

    aceitarTermos() {
        //Aceitar termos
        cy.get(el.aceptTerm).click({ force: true })

    }

    botaoCriarConta() {
        //Criar conta
        cy.get(el.buttonNextStep).click({ force: true })

    }

    mensagemSucesso() {
        //Verificarção de mensagem de sucesso
        cy.contains(el2.mensageSucess)
    }
}

export default new CadastroPF();