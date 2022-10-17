require "test_helper"

class AtividadeTest < ActiveSupport::TestCase

    test "criar atividade sem disciplina" do
        atividade = Atividade.new
        atividade.titulo = "Teste"
        atividade.descricao = "Teste"
        atividade.bimestre = "1"
        atividade.data = "2021-01-01"

        assert_not atividade.save
    end

    test "criar atividade sem titulo" do
        disciplinas = Disciplina.new
        disciplinas.nome = "Matematica"
        disciplinas.ano_letivo = "2021"

        atividade = Atividade.new
        atividade.descricao = "Teste"
        atividade.bimestre = "1"
        atividade.data = "2021-01-01"
        atividade.disciplina = disciplinas

        assert_not atividade.save
    end
end
