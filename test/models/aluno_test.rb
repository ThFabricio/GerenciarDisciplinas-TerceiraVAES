require "test_helper"

class AlunoTest < ActiveSupport::TestCase

  test "criar aluno sem nome" do
    turmas = Turma.new
    turmas.letra_turma = "A"
    turmas.ano = "1"
    turmas.ano_letivo = "2021"

    aluno = Aluno.new
    aluno.turma = turmas

    assert_not aluno.save
  end

  test "criar aluno sem turma" do
    aluno = Aluno.new
    aluno.nome = "Teste"

    assert_not aluno.save
  end

end
