class Atividade < ApplicationRecord

  belongs_to :disciplina

  validates :nome, presence: true, length: { maximum: 50 }
  validates :descricao, presence: true, length: { maximum: 255 }
  validates :disciplina_id, presence: true
end
