Given /^wunderground thinks it will "(\d+)" degrees centigrade tonight$/ do |temperature|
  path = "./spec/test_data/wunderground_20100326.yaml"
  yaml = File.read(path)
  feed = YAML::load(yaml)
  feed[2][:description] = "Chance of Rain. Low:" + temperature + " &amp;deg; C."
  
  File.delete(path + ".mock") if File.exists?(path + ".mock")
  
  mockFile = File.new(path + ".mock", "w")
  mockFile.puts YAML::dump(feed)
  mockFile.close

  class Forecasters::ForecastFetcher
    remove_method(:fetch)
  end
  
  class Forecasters::ForecastFetcher
    def fetch
      yaml = File.read("./spec/test_data/wunderground_20100326.yaml.mock")
      return YAML::load(yaml)
    end
  end
  
end
