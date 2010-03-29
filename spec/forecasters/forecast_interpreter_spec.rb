require File.join(File.dirname(__FILE__), "/../spec_helper" )

module Forecasters
  describe ForecastInterpreter do
    context "interpreting raw forecasts" do
      it "extracts tonight's weather description" do
        path = "./spec/test_data/wunderground_20100326.yaml"
        yaml = File.read(path)
        rawForecast = YAML::load(yaml)
        
        interpreter = Forecasters::ForecastInterpreter.new
        description = interpreter.extractTonightsDescription rawForecast
        description.should == "Chance of Rain. Low:7 &amp;deg; C."
      end
    end
    
    context "interpreting the wunderground's forecast description" do
      it "extracts the temperature" do
        
        description = "Chance of Rain. Low:7 &amp;deg; C."
        
        interpreter = Forecasters::ForecastInterpreter.new
        temperature = interpreter.extractTemperature description
        
        temperature.should == 7
        
      end
    end
    
    context "interpreting the raw forecasts" do
      it "extracts tonight's temperature" do
        path = "./spec/test_data/wunderground_20100326.yaml"
        yaml = File.read(path)
        rawForecast = YAML::load(yaml)
        
        interpreter = Forecasters::ForecastInterpreter.new
        forecast = interpreter.interpret rawForecast
        forecast[:tonight][:temperature].should == 7
        
      end
    end
    
  end
end