class AddDataToCertificadoDeDepositoBancario < ActiveRecord::Migration
  def self.up
    add_column :certificado_de_deposito_bancarios, :data, :date
  end

  def self.down
    remove_column :certificado_de_deposito_bancarios, :data
  end
end
