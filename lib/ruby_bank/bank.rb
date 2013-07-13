require 'active_record'
require 'sqlite3'

class Bank < ActiveRecord::Base
  has_many :accounts
  has_many :transactions, through: :accounts
  has_many :credits, through: :accounts
  has_many :debits, through: :accounts

  def initialize(name: nil, assets: 1000.00)
    @name = name
    @assets = assets
    super
  end

  def open_an_account(name: nil, hut_number: nil, account_number: nil)
    new_account = self.accounts.build(
      name: name, 
      hut_number: hut_number, 
      account_number: account_number
      )

    new_account.save
  end

  def liability
    self.accounts.inject(0.00) { |total, account| total + account.balance } || 0.00
  end
end