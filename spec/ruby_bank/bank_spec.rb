require 'spec_helper'

describe Bank do    
  before(:all) do
    @bank_name = 'Test Bank'
    @bank = Bank.create(name: @bank_name)
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

      it 'should have an empty :accounts Array on creation' do
        @bank.accounts.should be_empty
      end

      it 'should have a :liability of 0' do
        @bank.liability.should be_zero
      end

      it 'should have :assets of 1000.00' do
        @bank.assets.should eql(1000.00)
      end

      it 'should have a valid :name' do
        @bank.name.length.should_not be_zero
      end
    end

    context 'with no name argument' do
      it 'should not save successfully' do
        expect{ Bank.create }.to raise_error
      end
    end
  end

  describe '#name' do
    subject { @bank.name }

    context "with 'Test Bank' as the :name" do
      it { should eql 'Test Bank' }
    end
  end

  describe '#assets' do
    subject { @bank.assets }
    
    it { should eql(1000.00) }    
  end

  describe '#accounts' do
    subject { @bank.accounts }

    it { should be_empty }
  end

  describe '#liability' do
    # :libility seems to be supposed return the total amount
    # of money deposited with the bank.
    subject { @bank.liability }

    it { should eql 0.00 }
  end

  describe '#open_an_account' do
    context 'with valid :name, :hut_number and :account_number arguments' do
      it 'should increase size of :accounts by 1' do
        expect{ @bank.open_an_account(name: 'Test Client', hut_number: 'HUT0001', account_number: 'ACC001') }.
          to change{ @bank.accounts.count }.from(0).to(1)
      end
    end

    context 'with a nil parameter' do
      it 'should raise an error' do
        expect{ @bank.open_an_account(name: nil, hut_number: nil, account_number: nil) }.to raise_error
      end
    end
  end
end