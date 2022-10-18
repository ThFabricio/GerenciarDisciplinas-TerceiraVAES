Given('O usuario de login {string} e senha {string} existe') do |string, string2|
  visit 'users/sign_up'
  fill_in 'user_nome', with: 'Teste'
  fill_in 'user_email', with: string
  fill_in 'user_password', with: string2
  fill_in 'user_password_confirmation', with: string2
  click_button 'Sign up'
end

Given('Eu estou logado com login {string} e senha {string}') do |string, string2|
  visit 'users/sign_in'
  fill_in 'user_email', with: string
  fill_in 'user_password', with: string2
  click_button 'Log in'
end

Given('A turma de letra {string}, ano {string} e ano letivo {string} existe') do |string, string2, string3|
  visit 'turmas/new'
  fill_in 'turma[letra_turma]', with: string
  fill_in 'turma_ano', with: string2
  fill_in 'turma[ano_letivo]', with: string3
  click_button 'Create Turma'
end

Given('Eu estou na pagina de cadastro de disciplina') do
  visit 'disciplinas/new'
end

Given('Preencho nome com {string}, ano letivo com {string} e seleciono a turma de letra {string}, ano {string} e ano letivo {string}') do |string, string2, string3, string4, string5|
  fill_in 'disciplina_nome', with: string
  fill_in 'disciplina[ano_letivo]', with: string2
  find("disciplina[turma_id] option[value='#{string3} - #{string4} - #{string5}']").select_option
end

When('Clico em cadastrar disciplina') do
  click_button 'Create this disciplina'
end

Then('Vejo que a disciplina de nome {string} foi criada') do |string|
  expect(page).to have_content(string)
end

Given('A disciplina de nome {string}, ano letivo {string} e turma do {string} ano {string} de {string} existe') do |string, string2, string3, string4, string5|
  visit 'disciplinas/new'
  fill_in 'disciplina_nome', with: string
  fill_in 'disciplina[ano_letivo]', with: string2
  find("disciplina[turma_id] option[value='#{string3} - #{string4} - #{string5}']").select_option
  click_button 'Create this disciplina'
end

Given('Eu estou na pagina da disciplina de nome {string}, ano letivo {string}, de letra {string}, ano {string} e ano letivo {string}') do |string, string2, string3, string4, string5|
  visit 'disciplinas'
  click_link string
end

Given('Clico em editar a disciplina de nome {string}, ano letivo {string}') do |string, string2|
  click_link 'Edit'
end

When('Clico em editar a disciplina') do
  click_button 'Update this disciplina'
end

Then('Vejo que a disciplina foi alterada com nome {string} e ano letivo {string}') do |string, string2|
  expect(page).to have_content(string)
  expect(page).to have_content(string2)
end

Given('Preencho nome com {string}, ano letivo com {string} e seleciono a de letra {string}, ano {string} e ano letivo {string}') do |string, string2, string3, string4, string5|
  fill_in 'disciplina_nome', with: string
  fill_in 'disciplina[ano_letivo]', with: string2
  select(string3, :from => 'disciplina_turma_id')
end

Then('Eu vejo a mensagem de erro {string}') do |string|
  expect(page).to have_content(string)
end
