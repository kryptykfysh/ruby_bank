require 'active_record'
require 'sqlite3'

class Account < ActiveRecord::Base
  belongs_to :bank

  def balance
    BigDecimal('0')
  end

  def deposit

  end

  def withdraw

  end
end