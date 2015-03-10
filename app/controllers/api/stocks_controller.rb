module Api
  class StocksController < APIController
    PAST_30_DAYS = {
      start_date: Time::now-(24*60*60*30),
      end_date: Time::now
    }

    MAX_QUERY_RESULTS = 10

    def index
      query = params[:q]

      @stocks =
        if query.present?
          Stock.search query, MAX_QUERY_RESULTS
        else
          []
        end
    end

    def show
      @stock = Stock.find(params[:id])
      @quotes = quotes(params[:id])
    end

    def quotes(symbol)
      id = 0

      YahooFinance.historical_quotes(symbol, PAST_30_DAYS).map do |quote|
        id += 1
        open  = quote.open.to_f
        close = quote.close.to_f
        high  = quote.high.to_f
        low   = quote.low.to_f

        {
          id: id,
          avg: (open + close + high + low) / 4,
          open: open,
          close: close,
          high: high,
          low: low,
          date: quote.trade_date,
          volume: quote.volume.to_i
        }
      end
    end
  end
end
