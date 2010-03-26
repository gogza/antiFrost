require File.join(File.dirname(__FILE__), "/../spec_helper" )

module Forecasters
  describe ForecastInterpreter do
    context "interpreting a forecast" do
      it "should use the assigned fetcher" do
        fetcher = mock("fetcher")
        interpreter = Forecasters::ForecastInterpreter.new
        forecast = interpreter.interpret(fetcher)
        fetcher.should_receive(:fetchForecast)
      end
    end
  end
end