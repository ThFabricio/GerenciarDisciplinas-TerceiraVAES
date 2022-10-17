require "test_helper"

class AvaliacaoAlunoTest < ActiveSupport::TestCase

  test "criar avaliacao aluno sem aluno" do
    avaliacao_aluno = AvaliacaoAluno.new
    avaliacao_aluno.pontos = "10"
    avaliacao_aluno.observacoes = "Teste"
    avaliacao_aluno.atividade = Atividade.first

    assert_not avaliacao_aluno.save
  end

  test "criar avaliacao aluno sem atividade" do
    alunos = Aluno.new
    alunos.nome = "Teste"

    avaliacao_aluno = AvaliacaoAluno.new
    avaliacao_aluno.pontos = "10"
    avaliacao_aluno.observacoes = "Teste"
    avaliacao_aluno.aluno = alunos

    assert_not avaliacao_aluno.save
  end
end
