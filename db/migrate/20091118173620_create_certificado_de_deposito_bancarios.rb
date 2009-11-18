class CreateCertificadoDeDepositoBancarios < ActiveRecord::Migration
  def self.up
    create_table :certificado_de_deposito_bancarios do |t|
      t.decimal :taxa_anual, :precision => 3, :scale => 2

      t.timestamps
    end
  end

  def self.down
    drop_table :certificado_de_deposito_bancarios
  end
end
