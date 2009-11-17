require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

module FatorSpecHelper
  def valid_fator_attributes
    { :prazo => 30 }
  end
end

describe Fator do
  
  include FatorSpecHelper
  
  before(:each) do
    @fator = Fator.new
  end

  it "deve ser válido" do
    @fator.attributes = valid_fator_attributes
    @fator.should be_valid
  end

  # Atributo: prazo

  it "prazo não pode ser nulo" do 
    @fator.attributes = valid_fator_attributes.except(:prazo)
    @fator.prazo = nil
    @fator.should_not be_valid
    @fator.errors.on(:prazo).should include("não pode ser nulo")
  end  

  it "prazo deve ser maior que zero" do
    @fator.attributes = valid_fator_attributes.except(:prazo)
    @fator.prazo = 0
    @fator.should_not be_valid
    @fator.errors.on(:prazo).should include("não é um número válido")
  end

  it "prazo deve ser numero inteiro" do
    @fator.attributes = valid_fator_attributes.except(:prazo)
    @fator.prazo = 1.1
    @fator.should_not be_valid
    @fator.errors.on(:prazo).should include("não é um número válido")
  end

  it "prazo deve ser numero" do
    @fator.attributes = valid_fator_attributes.except(:prazo)
    @fator.prazo = "a"
    @fator.should_not be_valid
    @fator.errors.on(:prazo).should include("não é um número válido")
  end

end
