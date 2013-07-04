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

    describe '#new' do
      context 'with a valid String argument' do
        subject { @bank }

        it { should be_an_instance_of(Bank) }
      end

      context 'with no name argument' do
        it 'should raise an ArgumentError' do
          expect{ RubyBank::Bank.new }.to raise_error(ArgumentError)
        end
      end
    end

    describe '#name' do
      subject { @bank.name }

      it { should be_an_instance_of(String) }

      context "with 'Test Bank' as the :name" do
        it { should eql 'Test Bank' }
      end
    end

    describe '#assets' do
      # If have no idea what #assets should be returning.
      # I'm just guessing here.
      subject { @bank.assets }

      it { should be_an_instance_of(Array) }
    end

    describe '#accounts' do
      # If have no idea what #accounts should be returning.
      # I'm just guessing it should be an Array of Accounts.
      subject { @bank.accounts }

      it { should be_an_instance_of(Array) }
    end

    describe '#liability' do
      # If have no idea what #liability should be returning.
      # I'm just guessing it's a BigDecimal.
      subject { @bank.liability }

      it { should be_an_instance_of(BigDecimal) }
    end

    describe '#open_an_account' do
      context 'with valid :name and :hut_number arguments' do
        it 'should increase size of :accounts by 1' do
          expect{ @bank.open_an_account(name: 'Test Client', hut_number: 'HUT0001') }.
            to change{@bank.accounts.size}.from(0).to(1)
        end
      end
    end
  end
end