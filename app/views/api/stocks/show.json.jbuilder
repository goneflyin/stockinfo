json.stocks [@stock] do |stock|
  json.id         stock.symbol
  json.symbol     stock.symbol
  json.name       stock.name
  json.marketCap stock.market_cap
  json.ipoYear   stock.ipo_year
  json.sector     stock.sector
  json.industry   stock.industry
  json.quotes     @quotes.map { |q| q[:id] }
end
json.quotes @quotes