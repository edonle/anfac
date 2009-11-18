class CertificadoDeDepositoBancario < ActiveRecord::Base
  validates_presence_of :taxa_anual, :message => "não pode ser nulo"
  validates_numericality_of :taxa_anual, :greater_than => 0, :message => "não é um número válido"
  validates_uniqueness_of :data
end
