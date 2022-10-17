class Aluno < ApplicationRecord

  belongs_to :turma

  validates :nome, presence: true, length: { minimum: 3, maximum: 50 }
  validates :turma_id, presence: true
end
