const el = require('./elements').ELEMENTS;
const el2 = require('./elements').VALUE;


class singin {
    paginaLogin(){
        cy.visit(el.link)
        
    }

    loginOutrasAdmin(){
        cy.get(el.otherAdmins).click()
    }

    loginItau(){
        cy.get(el.itauAdmin).click()
        
    }

    formLoginOutrasAdmin(){
        cy.get(el.inputUser).type(el2.user1)
        cy.get(el.inputPass).type(el2.password)
        
    }

    formLoginOutrasAdmin4(){
        cy.get(el.inputUser).type(el2.user4)
        cy.get(el.inputPass).type(el2.password)
        
    }

    formLoginItau(){
        cy.get(el.inputUser).type(el2.user3)
        cy.get(el.inputPass).type(el2.password)

    }

    entrar(){
        cy.get(el.entrarButton).click()
    }
}

export default new singin();