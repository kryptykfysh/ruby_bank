require 'active_record'
require 'sqlite3'

class Account < ActiveRecord::Base
  belongs_to :bank
  has_many :transactions
  has_many :credits
  has_many :debits

  # @return [Float] the balance of the Account after all
  #  Credits and Debits are totalled.
  def balance
    credit_total - debit_total
  end
  
  # @return [Float] the sum of all Credits on the Account.
  def credit_total
    self.credits.pluck(:amount).reduce(:+) || 0.00
  end
  
  # @return [Float] the sum of all Credits on the Account.
  def debit_total
    self.debits.pluck(:amount).reduce(:+) || 0.00
  end
  
  # Creates a Deposit on the Account.
  #
  # @param amount [Float] the amount to credit the Account.
  # @return [Boolean] success or failure in saving the Credit
  def deposit(amount=0.00)
    deposit = self.credits.build(amount: amount)
    deposit.save
  end
  
  # Creates a Credit on the Account.
  #
  # @param amount [Float] the amount to debit the Account.
  # @return [Boolean] success or failure in saving the Credit
  def withdraw(amount=0.00)
    withdrawal = self.debits.build(amount: amount)
    withdrawl.save    
  end
end