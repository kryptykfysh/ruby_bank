require 'spec_helper'

module RubyBank
  describe Bank do    
    before(:each) do
      @bank_name = 'Test Bank'
      @bank = RubyBank::Bank.new(@bank_name)
    end
    
    describe 'methods and attributes' do
      subject { @bank }

      it { should respond_to(:name) }
      it { should respond_to(:assets) }
      it { should respond_to(:accounts) }
      it { should respond_to(:liability) }
      it { should respond_to(:open_an_account) }      
    end
  end
end