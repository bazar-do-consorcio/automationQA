import singin from '../support/pages/login/index'

describe('login', function () {

    it('login itau', function () {
        singin.paginaLogin()
        singin.loginItau()
        singin.formLoginItau()
        singin.entrar()

    })

    it('login other', function () {
        singin.paginaLogin()
        singin.loginOutrasAdmin()
        singin.formLoginOutrasAdmin()
        singin.entrar()
    })

})


