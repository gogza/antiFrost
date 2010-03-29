module Forecasters
    class Forecaster
      
      def initialize(fetcher = ForecastFetcher.new, interpreter = ForecastInterpreter.new)
        @fetcher = fetcher
        @interpreter = interpreter
      end
      
      def tonightsTemperature
        rawForecasts = @fetcher.fetch
        forecasts = @interpreter.interpret rawForecasts
        return forecasts[:tonight][:temperature]
      end
      
    end  
end
