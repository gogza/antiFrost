module Forecasters
  class ForecastInterpreter
    def interpret(rawForecasts)
      tonightsDescription = extractTonightsDescription rawForecasts
      tonightsTemperature = extractTemperature tonightsDescription
      Hash[:tonight => Hash[:temperature => tonightsTemperature]]
    end
    
    def extractTonightsDescription (rawForecasts)
      @forecasts = rawForecasts.select do |forecast|
        forecast[:guid].include? "-1-night"
      end
      return @forecasts[0][:description]      
    end
    
    def extractTemperature (description)
      description.match('\d+')[0].to_i
    end
    
  end
end