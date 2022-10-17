class Atividade < ApplicationRecord

  belongs_to :disciplina
  has_many :avaliacao_atividades, dependent: :destroy

  validates :titulo, presence: true, length: { minimum: 3, maximum: 50 }
  validates :descricao, presence: true, length: { minimum: 3, maximum: 50 }
  validates :bimestre, presence: true, length: { minimum: 1, maximum: 1 }, numericality: { only_integer: true }, inclusion: { in: 1..4 }
  validates :data, presence: true
  validates :disciplina_id, presence: true
end
