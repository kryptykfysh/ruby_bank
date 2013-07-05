require 'bigdecimal'

module RubyBank
  class Bank
    attr_reader :name, :assets, :accounts, :liability

    def initialize(name)
      if name.length == 0
        raise ArgumentError, 'Bank :name must be longer than zero characters.'
      end
      @name = name
      @assets = []
      @accounts = []
      @liability = BigDecimal.new('0')
    end

    def open_an_account(name: nil, hut_number: nil, account_number: nil)
      unless name.is_a?(String) && hut_number.is_a?(String) && account_number.is_a?(String)
        raise ArgumentError, 'Must supply :name, :hut_number, and :account_number'
      end

      self.accounts << {name: name, hut_number: hut_number, account_number: account_number}
    end
  end
end