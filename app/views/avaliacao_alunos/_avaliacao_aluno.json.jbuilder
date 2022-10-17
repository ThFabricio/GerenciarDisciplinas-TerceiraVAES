json.extract! avaliacao_aluno, :id, :pontos, :observacoes, :created_at, :updated_at
json.url avaliacao_aluno_url(avaliacao_aluno, format: :json)
