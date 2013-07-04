require 'bigdecimal'

module RubyBank
  class Bank
    attr_reader :name, :assets, :accounts, :liability

    def initialize(name)
      @name = name
      @assets = []
      @accounts = []
      @liability = BigDecimal.new('0')
    end

    def open_an_account(name: nil, hut_number: nil)
      self.accounts << {name: name, hut_number: hut_number}
    end
  end
end