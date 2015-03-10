require 'json'

class Stock
  attr_reader :symbol, :name, :market_cap, :ipo_year, :sector, :industry


  class << self
    def add(data)
      @stocks ||= []
      @by_symbol ||= {}
      stock = Stock.new(data)
      @by_symbol[data[:symbol]] = stock
      @stocks << stock
    end

    def find(symbol)
      @by_symbol[symbol]
    end

    def search(symbol, limit = 10)
      results = []

      @stocks.each do |stock|
        if stock.name.starts_with? symbol
          results << stock
        end

        return results if results.length >= limit
      end

      results
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
