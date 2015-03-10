json.stocks @stocks do |stock|
  json.id         stock.symbol
  json.symbol     stock.symbol
  json.name       stock.name
end
