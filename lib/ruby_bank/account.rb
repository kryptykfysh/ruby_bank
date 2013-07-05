require 'bigdecimal'

module RubyBank
  class Account
    attr_reader :name, :hut_number, :account_number, :balance

    def initialize(name: nil, account_number: nil, hut_number: nil)
      if [name, account_number, hut_number].any? do |param|
          param.nil? || param.empty?
        end
        raise ArgumentError, 'Invalid parameter.'
      end
      @name = name
      @account_number = account_number
      @hut_number = hut_number
      @balance = BigDecimal.new('0')
    end

    def deposit

    end

    def withdraw

    end
  end
end