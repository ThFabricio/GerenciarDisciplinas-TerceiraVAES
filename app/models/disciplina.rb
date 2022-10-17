class Disciplina < ApplicationRecord

  belongs_to :user
  belongs_to :turma
  has_many :atividades, dependent: :destroy

  validates :nome, presence: true, length: { minimum: 3, maximum: 50 }
  validates :ano_letivo, presence: true, length: { minimum: 4, maximum: 4 }, numericality: { only_integer: true }, uniqueness: { scope: :turma_id, message: "já existe uma disciplina com esse nome para essa turma" }
  validates :user_id, presence: true
  validates :turma_id, presence: true
end
