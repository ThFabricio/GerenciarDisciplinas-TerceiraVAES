class CreateAtividades < ActiveRecord::Migration[7.0]
  def change
    create_table :atividades do |t|
      t.string :titulo
      t.string :descricao
      t.string :bimestre
      t.date :data

      t.references :disciplina, null: false, foreign_key: true
      t.timestamps
    end
  end
end
