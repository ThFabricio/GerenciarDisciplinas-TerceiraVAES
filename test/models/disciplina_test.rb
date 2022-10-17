require "test_helper"

class DisciplinaTest < ActiveSupport::TestCase

  test "criar disciplina sem turma" do
    users = User.new
    users.nome = "Teste"
    users.email = "teste@gmail.com"
    users.password = "123456"
    users.password_confirmation = "123456"

    disciplina = Disciplina.new
    disciplina.nome = "Matematica"
    disciplina.ano_letivo = "2021"
    disciplina.user = users

    assert_not disciplina.save
  end

  test "criar disciplina sem user" do
    turmas = Turma.new
    turmas.letra_turma = "A"
    turmas.ano = "1"
    turmas.ano_letivo = "2021"

    disciplina = Disciplina.new
    disciplina.nome = "Matematica"
    disciplina.ano_letivo = "2021"
    disciplina.turma = turmas

    assert_not disciplina.save
  end
end
