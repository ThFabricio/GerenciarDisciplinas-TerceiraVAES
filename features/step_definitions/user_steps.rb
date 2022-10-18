Given('Eu estou na pagina de cadastro') do
  visit '/users/sign_up'
end

Given('Preencho nome com {string}, email com {string}, senha com {string} e confirmacao de senha com {string}') do |string, string2, string3, string4|
  fill_in 'user_nome', with: string
  fill_in 'user_email', with: string2
  fill_in 'user_password', with: string3
  fill_in 'user_password_confirmation', with: string4
end

When('Clico em cadastrar') do
  click_button 'Sign up'
end

Then('Vejo que o cadastro do login {string} foi efetuado') do |string|
  expect(page).to have_content(string)
end

Given('O usuario de login nome com {string}, email com {string}, senha com {string} e confirmacao de senha com {string}') do |string, string2, string3, string4|
  visit '/users/sign_up'
  fill_in 'user_nome', with: string
  fill_in 'user_email', with: string2
  fill_in 'user_password', with: string3
  fill_in 'user_password_confirmation', with: string4

  click_button 'Sign up'
end

Given('Eu estou na pagina de login') do
  visit '/users/sign_in'
end

When('Clico em logar') do
  click_button 'Log in'
end

Then('Eu vejo que estou logado com login {string}') do |string|
  expect(page).to have_content(string)
end

Given('Preencho login com email {string} e senha com {string}') do |string, string2|
  fill_in 'user_email', with: string
  fill_in 'user_password', with: string2
end



