Given('Eu estou na pagina de cadastro de atividade') do
  visit 'atividades/new'
end

Given('Preencho titulo com {string}, descricao {string}, bimestre {string}, data {string} da disciplina de nome {string} e ano letivo {string}') do |string, string2, string3, string4, string5,string6|
  fill_in 'atividade[titulo]', with: string
  fill_in 'atividade[descricao]', with: string2
  fill_in 'atividade[bimestre]', with: string3
  fill_in 'atividade[data]', with: string4
  find("atividade[disciplina_id] option[value='#{string5} - #{string6}']").select_option
end

When('Clico em cadastrar a atividade') do

  click_button 'Create this atividade'
end

Then('Vejo que a atividade de titulo {string} e bimestre {string} foi criada com sucesso') do |string, string2|

  expect(page).to have_content(string)
  expect(page).to have_content(string2)
end
