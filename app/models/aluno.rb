class Aluno < ApplicationRecord
  belongs_to :endereco

  validates :nome, :documento, :telefone, :email, :pai, :mae, presence: true

end
