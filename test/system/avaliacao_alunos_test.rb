require "application_system_test_case"

class AvaliacaoAlunosTest < ApplicationSystemTestCase
  setup do
    @avaliacao_aluno = avaliacao_alunos(:one)
  end

  test "visiting the index" do
    visit avaliacao_alunos_url
    assert_selector "h1", text: "Avaliacao alunos"
  end

  test "should create avaliacao aluno" do
    visit avaliacao_alunos_url
    click_on "New avaliacao aluno"

    fill_in "Observacoes", with: @avaliacao_aluno.observacoes
    fill_in "Pontos", with: @avaliacao_aluno.pontos
    click_on "Create Avaliacao aluno"

    assert_text "Avaliacao aluno was successfully created"
    click_on "Back"
  end

  test "should update Avaliacao aluno" do
    visit avaliacao_aluno_url(@avaliacao_aluno)
    click_on "Edit this avaliacao aluno", match: :first

    fill_in "Observacoes", with: @avaliacao_aluno.observacoes
    fill_in "Pontos", with: @avaliacao_aluno.pontos
    click_on "Update Avaliacao aluno"

    assert_text "Avaliacao aluno was successfully updated"
    click_on "Back"
  end

  test "should destroy Avaliacao aluno" do
    visit avaliacao_aluno_url(@avaliacao_aluno)
    click_on "Destroy this avaliacao aluno", match: :first

    assert_text "Avaliacao aluno was successfully destroyed"
  end
end
