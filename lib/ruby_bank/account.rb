require 'active_record'
require 'sqlite3'

class Account < ActiveRecord::Base
  belongs_to :bank
  has_many :transactions
  has_many :credits
  has_many :debits

  def balance
    credit_total - debit_total
  end

  def credit_total
    self.credits.pluck(:amount).reduce(:+) || 0.00
  end

  def debit_total
    self.debits.pluck(:amount).reduce(:+) || 0.00
  end

  def deposit(amount=0.00)
    deposit = self.credits.build(amount: amount)
    deposit.save
  end

  def withdraw(amount=0.00)
    withdrawal = self.debits.build(amount: amount)
    withdrawl.save    
  end
end