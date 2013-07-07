require 'active_record'
require 'sqlite3'

class Bank < ActiveRecord::Base
  has_many :accounts

  def open_an_account(name: nil, hut_number: nil, account_number: nil)
    new_account = self.accounts.build(
      name: name, 
      hut_number: hut_number, 
      account_number: account_number)

    new_account.save
  end

  def assets
    []
  end

  def liability
    BigDecimal('0')
  end
end