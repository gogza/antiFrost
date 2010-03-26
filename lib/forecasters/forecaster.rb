module Forecasters
    class Forecaster
      
      def initialize
        @fetcher = ForecastFetcher.new
      end
      
      def tonightsTemperature
        @fetcher.fetch
      end
      
    end  
end
