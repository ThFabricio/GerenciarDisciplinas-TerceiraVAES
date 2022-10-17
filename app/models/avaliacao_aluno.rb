class AvaliacaoAluno < ApplicationRecord

  belongs_to :aluno
  belongs_to :atividade

  validates :pontos, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
  validates :observacoes, presence: true, length: { maximum: 255 }
  validates :aluno_id, presence: true
  validates :atividade_id, presence: true
end
