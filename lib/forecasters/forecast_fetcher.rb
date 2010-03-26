module Forecasters
  class ForecastFetcher
    require 'open-uri'
    require 'simple-rss'
    
    def fetch
      rss = SimpleRSS.parse open("http://rss.wunderground.com/auto/rss_full/global/stations/06451.xml?units=metric")
      return rss.entries
    end
  end
end