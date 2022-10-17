class Turma < ApplicationRecord

  belongs_to :user
  has_many :disciplinas

  validates :letra_turma, presence: true, length: { maximum: 1 }, format: { with: /\A[a-zA-Z]+\z/, message: "Letra da turma inválida" }
  validates :ano, presence: true, length: { maximum: 4 }, format: { with: /\A[0-9]+\z/, message: "Ano inválido" }
  validates :ano_letivo, presence: true, length: { maximum: 4 }, format: { with: /\A[0-9]+\z/, message: "Ano letivo inválido" }

end

