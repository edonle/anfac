class Fator < ActiveRecord::Base
  validates_presence_of :prazo, :message => "não pode ser nulo"
  validates_numericality_of :prazo, :greater_than_or_equal_to => 1, :only_integer => true, :message => "não é um número válido"
end
