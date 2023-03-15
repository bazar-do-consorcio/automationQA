import CadastroPJ from '../support/pages/cadastroPessoaJuridica/index'

describe('Cadastro', function () {

   beforeEach(() => {
      cy.clearCookies()
   })

   it('Bradesco', function () {
      CadastroPJ.criarNovaConta()
      CadastroPJ.administradoraBradesco()
      CadastroPJ.pessoaJuridica()
      CadastroPJ.formularioPessoaJuridica()
      CadastroPJ.anexarExtrato()
      CadastroPJ.criarSenha()
      CadastroPJ.aceitarTermos()
      CadastroPJ.botaoCriarConta()
      CadastroPJ.mensagemSucesso()
   })

   it.only('Itau', function () {
    CadastroPJ.criarNovaConta()
    CadastroPJ.administradoraItau()
    CadastroPJ.pessoaJuridica()
    CadastroPJ.formularioPessoaJuridica()
    CadastroPJ.cota()
    CadastroPJ.criarSenha()
    CadastroPJ.aceitarTermos()
    CadastroPJ.botaoCriarConta()
    CadastroPJ.mensagemSucesso()

   })

   it('Embracon', function () {
    CadastroPJ.criarNovaConta()
      CadastroPJ.administradoraEmbracon()
      CadastroPJ.pessoaJuridica()
      CadastroPJ.formularioPessoaJuridica()
      CadastroPJ.anexarExtrato()
      CadastroPJ.criarSenha()
      CadastroPJ.aceitarTermos()
      CadastroPJ.botaoCriarConta()
      CadastroPJ.mensagemSucesso()
   })

   it('Consorcio nacional Honda', function () {
    CadastroPJ.criarNovaConta()
      CadastroPJ.administradoraHonda()
      CadastroPJ.pessoaJuridica()
      CadastroPJ.formularioPessoaJuridica()
      CadastroPJ.anexarExtrato()
      CadastroPJ.criarSenha()
      CadastroPJ.aceitarTermos()
      CadastroPJ.botaoCriarConta()
      CadastroPJ.mensagemSucesso()
   })

   it('Consorcio Nacional Volkswagen', function () {
    CadastroPJ.criarNovaConta()
      CadastroPJ.administradoraVolkswagen()
      CadastroPJ.pessoaJuridica()
      CadastroPJ.formularioPessoaJuridica()
      CadastroPJ.anexarExtrato()
      CadastroPJ.criarSenha()
      CadastroPJ.aceitarTermos()
      CadastroPJ.botaoCriarConta()
      CadastroPJ.mensagemSucesso()
   })

   it('Porto Seguro', function () {
    CadastroPJ.criarNovaConta()
      CadastroPJ.administradoraPortoSeguro()
      CadastroPJ.pessoaJuridica()
      CadastroPJ.formularioPessoaJuridica()
      CadastroPJ.cota()
      CadastroPJ.criarSenha()
      CadastroPJ.aceitarTermos()
      CadastroPJ.botaoCriarConta()
      CadastroPJ.mensagemSucesso()
   })

   it('Rodobens', function () {
    CadastroPJ.criarNovaConta()
      CadastroPJ.administradoraRodobens()
      CadastroPJ.pessoaJuridica()
      CadastroPJ.formularioPessoaJuridica()
      CadastroPJ.anexarExtrato()
      CadastroPJ.criarSenha()
      CadastroPJ.aceitarTermos()
      CadastroPJ.botaoCriarConta()
      CadastroPJ.mensagemSucesso()
   })

   it('Disal', function () {
    CadastroPJ.criarNovaConta()
      CadastroPJ.administradoraDisal()
      CadastroPJ.pessoaJuridica()
      CadastroPJ.formularioPessoaJuridica()
      CadastroPJ.anexarExtrato()
      CadastroPJ.criarSenha()
      CadastroPJ.aceitarTermos()
      CadastroPJ.botaoCriarConta()
      CadastroPJ.mensagemSucesso()
   })

   it('BB Consorcios - Banco do Brasil', function () {
    CadastroPJ.criarNovaConta()
      CadastroPJ.administradoraBB()
      CadastroPJ.pessoaJuridica()
      CadastroPJ.formularioPessoaJuridica()
      CadastroPJ.anexarExtrato()
      CadastroPJ.criarSenha()
      CadastroPJ.aceitarTermos()
      CadastroPJ.botaoCriarConta()
      CadastroPJ.mensagemSucesso()
   })

   it('Santander', function () {
    CadastroPJ.criarNovaConta()
      CadastroPJ.administradoraSantander()
      CadastroPJ.pessoaJuridica()
      CadastroPJ.formularioPessoaJuridica()
      CadastroPJ.anexarExtrato()
      CadastroPJ.criarSenha()
      CadastroPJ.aceitarTermos()
      CadastroPJ.botaoCriarConta()
      CadastroPJ.mensagemSucesso()
   })

   it('ADM XPTO', function () {
    CadastroPJ.criarNovaConta()
      CadastroPJ.administradoraXPTO()
      CadastroPJ.pessoaJuridica()
      CadastroPJ.formularioPessoaJuridica()
      CadastroPJ.anexarExtrato()
      CadastroPJ.criarSenha()
      CadastroPJ.aceitarTermos()
      CadastroPJ.botaoCriarConta()
      CadastroPJ.mensagemSucesso()
   })

   it('Caixa Consorcio', function () {
    CadastroPJ.criarNovaConta()
      CadastroPJ.administradoraCaixa()
      CadastroPJ.pessoaJuridica()
      CadastroPJ.formularioPessoaJuridica()
      CadastroPJ.anexarExtrato()
      CadastroPJ.criarSenha()
      CadastroPJ.aceitarTermos()
      CadastroPJ.botaoCriarConta()
      CadastroPJ.mensagemSucesso()
   })

   it('Consorcio Chevrolet', function () {
    CadastroPJ.criarNovaConta()
      CadastroPJ.administradoraChevrolet()
      CadastroPJ.pessoaJuridica()
      CadastroPJ.formularioPessoaJuridica()
      CadastroPJ.anexarExtrato()
      CadastroPJ.criarSenha()
      CadastroPJ.aceitarTermos()
      CadastroPJ.botaoCriarConta()
      CadastroPJ.mensagemSucesso()
   })

})