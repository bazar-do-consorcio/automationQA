import homepage from '../support/pages/paginaInicial/index'

describe('Home', function () {
   beforeEach(() => {
      cy.clearCookies()
      cy.login()
   })

   it('Pagina Inicial', function () {
      homepage.userLogado()
      homepage.accessButtons()
      homepage.backHome()
      homepage.collapsedMenu()
      homepage.tooltipsText()
      homepage.scroll()
      homepage.bankDatas()
      homepage.backHome()
      homepage.collapsedMenu()
   })

})
