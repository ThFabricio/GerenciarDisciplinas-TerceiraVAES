class CreateTurmas < ActiveRecord::Migration[7.0]
  def change
    create_table :turmas do |t|
      t.string :letra_turma
      t.string :ano
      t.string :ano_letivo

      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
