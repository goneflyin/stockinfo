require 'stock'

LIST_DIR = "config/stocks"
EXCHANGES = ["amex", "nasdaq", "nyse"]

companies = EXCHANGES
  .map {|exch| "#{LIST_DIR}/#{exch}-companylist.csv"}
  .flat_map {|filename| CSV.read(filename, headers: true).collect {|row| row } }

companies.each do |c|
  Stock.add({
              symbol:     c["Symbol"],
              name:       c["Name"],
              market_cap: c["MarketCap"],
              ipo_year:   c["IPOyear"],
              sector:     c["Sector"],
              industry:   c["industry"]
            })
end

Rails.logger.info "Loaded #{companies.size} stocks."
