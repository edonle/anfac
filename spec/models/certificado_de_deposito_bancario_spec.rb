require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

module CertificadoDeDepositoBancarioSpecHelper
  def valid_certificado_de_deposito_bancario_attributes
    { :taxa_anual => 7.62 }
  end
end

describe CertificadoDeDepositoBancario do
  
  include CertificadoDeDepositoBancarioSpecHelper

  before(:each) do
    @cdb = CertificadoDeDepositoBancario.new
  end

  # Atributo: taxa_anual

  it "deve ser válido" do
    @cdb.attributes = valid_certificado_de_deposito_bancario_attributes
    @cdb.should be_valid
  end

  it "deve ser numero" do
    @cdb.attributes = valid_certificado_de_deposito_bancario_attributes.except(:taxa_anual)
    @cdb.taxa_anual = "a"
    @cdb.should_not be_valid
    @cdb.errors.on(:taxa_anual).should include("não é um número válido")
  end

  it "nao pode ser nulo" do
    @cdb.attributes = valid_certificado_de_deposito_bancario_attributes.except(:taxa_anual)
    @cdb.taxa_anual = nil
    @cdb.should_not be_valid
    @cdb.errors.on(:taxa_anual).should include("não pode ser nulo")
  end

  it "deve ser maior que zero" do
    @cdb.attributes = valid_certificado_de_deposito_bancario_attributes.except(:taxa_anual)
    @cdb.taxa_anual = 0
    @cdb.should_not be_valid
    @cdb.errors.on(:taxa_anual).should include("não é um número válido")
  end
end
