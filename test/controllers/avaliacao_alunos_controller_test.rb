require "test_helper"

class AvaliacaoAlunosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @avaliacao_aluno = avaliacao_alunos(:one)
  end

  test "should get index" do
    get avaliacao_alunos_url
    assert_response :success
  end

  test "should get new" do
    get new_avaliacao_aluno_url
    assert_response :success
  end

  test "should create avaliacao_aluno" do
    assert_difference("AvaliacaoAluno.count") do
      post avaliacao_alunos_url, params: { avaliacao_aluno: { observacoes: @avaliacao_aluno.observacoes, pontos: @avaliacao_aluno.pontos } }
    end

    assert_redirected_to avaliacao_aluno_url(AvaliacaoAluno.last)
  end

  test "should show avaliacao_aluno" do
    get avaliacao_aluno_url(@avaliacao_aluno)
    assert_response :success
  end

  test "should get edit" do
    get edit_avaliacao_aluno_url(@avaliacao_aluno)
    assert_response :success
  end

  test "should update avaliacao_aluno" do
    patch avaliacao_aluno_url(@avaliacao_aluno), params: { avaliacao_aluno: { observacoes: @avaliacao_aluno.observacoes, pontos: @avaliacao_aluno.pontos } }
    assert_redirected_to avaliacao_aluno_url(@avaliacao_aluno)
  end

  test "should destroy avaliacao_aluno" do
    assert_difference("AvaliacaoAluno.count", -1) do
      delete avaliacao_aluno_url(@avaliacao_aluno)
    end

    assert_redirected_to avaliacao_alunos_url
  end
end
