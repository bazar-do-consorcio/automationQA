import CadastroPF from '../support/pages/cadastroPessoaFisica/index'

describe('Cadastro', function () {

   beforeEach(() => {
      cy.clearCookies()

   })

   it('Bradesco', function () {
      CadastroPF.criarNovaConta()
      CadastroPF.administradoraBradesco()
      CadastroPF.pessoaFisica()
      CadastroPF.formularioPessoaFisica()
      CadastroPF.anexarExtrato()
      CadastroPF.criarSenha()
      CadastroPF.aceitarTermos()
      CadastroPF.botaoCriarConta()
      CadastroPF.mensagemSucesso()
   })

   it('Itau', function () {
      CadastroPF.criarNovaConta()
      CadastroPF.administradoraItau()
      CadastroPF.pessoaFisica()
      CadastroPF.formularioPessoaFisica()
      CadastroPF.cota()
      CadastroPF.criarSenha()
      CadastroPF.aceitarTermos()
      CadastroPF.botaoCriarConta()
      CadastroPF.mensagemSucesso()

   })

   it('Embracon', function () {
      CadastroPF.criarNovaConta()
      CadastroPF.administradoraEmbracon()
      CadastroPF.pessoaFisica()
      CadastroPF.formularioPessoaFisica()
      CadastroPF.anexarExtrato()
      CadastroPF.criarSenha()
      CadastroPF.aceitarTermos()
      CadastroPF.botaoCriarConta()
      CadastroPF.mensagemSucesso()
   })

   it('Consorcio nacional Honda', function () {
      CadastroPF.criarNovaConta()
      CadastroPF.administradoraHonda()
      CadastroPF.pessoaFisica()
      CadastroPF.formularioPessoaFisica()
      CadastroPF.anexarExtrato()
      CadastroPF.criarSenha()
      CadastroPF.aceitarTermos()
      CadastroPF.botaoCriarConta()
      CadastroPF.mensagemSucesso()
   })

   it('Consorcio Nacional Volkswagen', function () {
      CadastroPF.criarNovaConta()
      CadastroPF.administradoraVolkswagen()
      CadastroPF.pessoaFisica()
      CadastroPF.formularioPessoaFisica()
      CadastroPF.anexarExtrato()
      CadastroPF.criarSenha()
      CadastroPF.aceitarTermos()
      CadastroPF.botaoCriarConta()
      CadastroPF.mensagemSucesso()
   })

   it('Porto Seguro', function () {
      CadastroPF.criarNovaConta()
      CadastroPF.administradoraPortoSeguro()
      CadastroPF.pessoaFisica()
      CadastroPF.formularioPessoaFisica()
      CadastroPF.cota()
      CadastroPF.criarSenha()
      CadastroPF.aceitarTermos()
      CadastroPF.botaoCriarConta()
      CadastroPF.mensagemSucesso()
   })

   it('Rodobens', function () {
      CadastroPF.criarNovaConta()
      CadastroPF.administradoraRodobens()
      CadastroPF.pessoaFisica()
      CadastroPF.formularioPessoaFisica()
      CadastroPF.anexarExtrato()
      CadastroPF.criarSenha()
      CadastroPF.aceitarTermos()
      CadastroPF.botaoCriarConta()
      CadastroPF.mensagemSucesso()
   })

   it('Disal', function () {
      CadastroPF.criarNovaConta()
      CadastroPF.administradoraDisal()
      CadastroPF.pessoaFisica()
      CadastroPF.formularioPessoaFisica()
      CadastroPF.anexarExtrato()
      CadastroPF.criarSenha()
      CadastroPF.aceitarTermos()
      CadastroPF.botaoCriarConta()
      CadastroPF.mensagemSucesso()
   })

   it('BB Consorcios - Banco do Brasil', function () {
      CadastroPF.criarNovaConta()
      CadastroPF.administradoraBB()
      CadastroPF.pessoaFisica()
      CadastroPF.formularioPessoaFisica()
      CadastroPF.anexarExtrato()
      CadastroPF.criarSenha()
      CadastroPF.aceitarTermos()
      CadastroPF.botaoCriarConta()
      CadastroPF.mensagemSucesso()
   })

   it('Santander', function () {
      CadastroPF.criarNovaConta()
      CadastroPF.administradoraSantander()
      CadastroPF.pessoaFisica()
      CadastroPF.formularioPessoaFisica()
      CadastroPF.anexarExtrato()
      CadastroPF.criarSenha()
      CadastroPF.aceitarTermos()
      CadastroPF.botaoCriarConta()
      CadastroPF.mensagemSucesso()
   })

   it('ADM XPTO', function () {
      CadastroPF.criarNovaConta()
      CadastroPF.administradoraXPTO()
      CadastroPF.pessoaFisica()
      CadastroPF.formularioPessoaFisica()
      CadastroPF.anexarExtrato()
      CadastroPF.criarSenha()
      CadastroPF.aceitarTermos()
      CadastroPF.botaoCriarConta()
      CadastroPF.mensagemSucesso()
   })

   it('Caixa Consorcio', function () {
      CadastroPF.criarNovaConta()
      CadastroPF.administradoraCaixa()
      CadastroPF.pessoaFisica()
      CadastroPF.formularioPessoaFisica()
      CadastroPF.anexarExtrato()
      CadastroPF.criarSenha()
      CadastroPF.aceitarTermos()
      CadastroPF.botaoCriarConta()
      CadastroPF.mensagemSucesso()
   })

   it('Consorcio Chevrolet', function () {
      CadastroPF.criarNovaConta()
      CadastroPF.administradoraChevrolet()
      CadastroPF.pessoaFisica()
      CadastroPF.formularioPessoaFisica()
      CadastroPF.anexarExtrato()
      CadastroPF.criarSenha()
      CadastroPF.aceitarTermos()
      CadastroPF.botaoCriarConta()
      CadastroPF.mensagemSucesso()
   })

})