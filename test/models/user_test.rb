require "test_helper"

class UserTest < ActiveSupport::TestCase

  test "criar usuario corretamente" do
    user = User.new
    user.nome = "Teste"
    user.email = "teste@teste.com"
    user.password = "123456"
    user.password_confirmation = "123456"

    assert user.save
  end

  test "criar usuario sem nome" do
    user = User.new
    user.email = "teste@teste.com"
    user.password = "123456"
    user.password_confirmation = "123456"

    assert_not user.save
  end
end
