class Pessoa < ActiveRecord::Base
  validates :nome, presence: true
  validates :telefone, presence: true
end
