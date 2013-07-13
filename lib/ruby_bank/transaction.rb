require 'active_record'
require 'sqlite3'

class Transaction < ActiveRecord::Base
  belongs_to :account
end

class Credit < Transaction
  belongs_to :account
end

class Debit < Transaction
  belongs_to :account
end