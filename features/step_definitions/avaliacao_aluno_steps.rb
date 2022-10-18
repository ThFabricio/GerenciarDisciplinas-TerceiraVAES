Given('A atividade de titulo {string}, bimestre {string}, descricao {string}, data {string} de {string} de {string} da disciplina de nome {string} e ano letivo {string} existe') do |string, string2, string3, string4, string5, string6, string7, string8|

  visit 'atividades/new'
  fill_in 'atividade[titulo]', with: string
  fill_in 'atividade[descricao]', with: string2
  fill_in 'atividade[bimestre]', with: string3
  fill_in 'atividade[data]', with: string4
  find("atividade[disciplina_id] option[value='#{string7} - #{string8}']").select_option
  click_button 'Create this atividade'
end

Given('O aluno de nome {string} da turma do ano {string} {string} de {string} existe') do |string, string2, string3, string4|

  visit 'alunos/new'
  fill_in 'aluno[nome]', with: string
  find("aluno[turma_id] option[value='#{string2} - #{string3} - #{string4}']").select_option
  click_button 'Create this aluno'
end

Given('Eu estou na pagina de criacao de avaliacao') do

  visit 'avaliacao_alunos/new'
end

Given('Preencho pontos com {string}, observacoes com {string}, seleciono atividade de titulo {string} e bimestre {string} e seleciono aluno de nome {string}') do |string, string2, string3, string4, string5|

    fill_in 'avaliacao_aluno[pontos]', with: string
    fill_in 'avaliacao_aluno[observacoes]', with: string2
    find("avaliacao_aluno[atividade_id] option[value='#{string3} - #{string4}']").select_option
    find("avaliacao_aluno[aluno_id] option[value='#{string5}']").select_option
end

When('Clico em criar avaliacao') do
  click_button 'Create this avaliacao aluno'
end

Then('Vejo que a avaliacao foi criada com sucesso') do
  expect(page).to have_content('Avaliacao aluno was successfully created.')
end
