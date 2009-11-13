require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Fator do
  before(:each) do
    @valid_attributes = {
      :prazo => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Fator.create!(@valid_attributes)
  end
end
