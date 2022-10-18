Feature: User

  As a usuario do sistema GerenciaDisciplinas
  I want to me cadastrar, logar e editar meu cadastro
  so that eu possa ter acesso restrito as minhas informacoes no sistema

  Scenario: cadastro no sistema
    Given Eu estou na pagina de cadastro
    And Preencho nome com "Evandro", email com "evandro@gmail.com", senha com "123456" e confirmacao de senha com "123456"
    When Clico em cadastrar
    Then Vejo que o cadastro do login "Evandro" foi efetuado

  Scenario: logar no sistema
    Given O usuario de login nome com "Evandro", email com "evandro@gmail.com", senha com "123456" e confirmacao de senha com "123456"
    Given Eu estou na pagina de login
    And Preencho login com email "evandro@gmail.com" e senha com "123456"
    When Clico em logar
    Then Eu vejo que estou logado com login "Evandro"
