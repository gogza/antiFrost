module Forecasters
  class ForecastInterpreter
    def interpret(fetcher)
      forecast = fetcher.fetchForecast
    end
  end
end