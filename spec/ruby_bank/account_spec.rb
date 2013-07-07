require 'spec_helper'

describe Account do
  before(:each) do
    @name = 'Test Account'
    @hut_number = 'HUT0001'
    @account_number = 'ACC0001'
    @account = Account.new(name: @name, hut_number: @hut_number, account_number: @account_number)
  end

  describe 'methods and attributes' do
    subject { @account }

    it { should respond_to(:name) }
    it { should respond_to(:hut_number) }
    it { should respond_to(:account_number) }

    # I know the specs say that people should be able to :deposit
    # and :withdraw from a Bank. This is incorrect. THese methods
    # should be on the Account class, since this is where the money 
    # is added or withdrawn.
    it { should respond_to(:deposit) }
    it { should respond_to(:withdraw) }

    # There is also no account :balance currently specced.
    # I'm adding one.
    it { should respond_to(:balance) }
  end

  describe '#new' do
    context 'with valid arguments' do
      subject { @account }

      it { should be_an_instance_of(Account) }

      it 'should have a non-zero length :name' do
        @account.name.length.should_not be_zero
      end

      it 'should have a non-zero length :hut_number' do
        @account.hut_number.length.should_not be_zero
      end

      it 'should have a non-zero length :account_number' do
        @account.account_number.length.should_not be_zero
      end

      it 'should have a zero balance' do
        @account.balance.should be_zero
      end
    end

    context 'with invalid arguments' do
      it 'should not save successfully' do
        expect{ Account.create(name: nil) }.to raise_error
      end
    end
  end

  describe '#name' do
    subject { @account.name }

    it { should be_an_instance_of(String) }
  end

  describe '#hut_number' do
    subject { @account.hut_number }

    it { should be_an_instance_of(String) }
  end

  describe '#account_number' do
    subject { @account.account_number }

    it { should be_an_instance_of(String) }
  end

  describe '#balance' do
    subject { @account.balance }

    it { should be_an_instance_of(BigDecimal) }
  end
end