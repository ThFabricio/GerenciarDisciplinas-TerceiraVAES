require "test_helper"

class TurmaTest < ActiveSupport::TestCase

  test "criar turma corretamente" do
    users = User.new
    users.nome = "Teste"
    users.email = "teste@teste.com"
    users.password = "123456"
    users.password_confirmation = "123456"

    turma = Turma.new
    turma.letra_turma = "A"
    turma.ano = "1"
    turma.ano_letivo = "2021"
    turma.user = users

    assert turma.save
  end

  test "criar turma sem user" do
    turma = Turma.new
    turma.letra_turma = "A"
    turma.ano = "1"
    turma.ano_letivo = "2021"

    assert_not turma.save
  end
end
