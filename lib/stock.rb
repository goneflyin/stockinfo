require 'json'

class Stock
  attr_reader :symbol, :name, :market_cap, :ipo_year, :sector, :industry

  class << self
    def add(data)
      @by_symbol ||= {}
      @by_symbol[data[:symbol]] = Stock.new(data)
    end

    def find(symbol)
      @by_symbol[symbol]
    end
  end

  def initialize(data)
    @symbol = data[:symbol]
    @name = data[:name]
    @market_cap = data[:market_cap]
    @ipo_year = data[:ipo_year]
    @sector = data[:sector]
    @industry = data[:industry]
  end
end
