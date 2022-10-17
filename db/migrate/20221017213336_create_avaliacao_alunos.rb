class CreateAvaliacaoAlunos < ActiveRecord::Migration[7.0]
  def change
    create_table :avaliacao_alunos do |t|
      t.string :pontos
      t.string :observacoes

      t.references :aluno, null: false, foreign_key: true
      t.references :atividade, null: false, foreign_key: true

      t.timestamps
    end
  end
end
