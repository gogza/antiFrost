require File.join(File.dirname(__FILE__), "/../spec_helper" )

module Forecasters
  describe Forecaster do
    context "getting tonight's temperture" do
      before (:each) do
        @fetcher = mock("fetcher").as_null_object
        @interpreter = mock("interpreter").as_null_object
      end
      
      def perform
        sut = Forecasters::Forecaster.new(@fetcher, @interpreter)
        @temperature = sut.tonightsTemperature
      end
      
      it "should use the assigned fetcher" do
        
        @fetcher.should_receive(:fetch)
        
        perform
      end
      
      it "should pass on the result to the interpreter" do
        fetchedResults = "fake fetched results"

        interpretedResults = Hash[:tonight => Hash[:temperature => 4]]

        @fetcher.should_receive(:fetch).and_return(fetchedResults)
        @interpreter.should_receive(:interpret).with(fetchedResults).and_return(interpretedResults)
        
        perform
      end
      
      it "should extract tonight's temperature from the interpreters results" do
        fetchedResults = "fake fetched results"
        
        interpretedResults = Hash[:tonight => Hash[:temperature => 4]]

        @fetcher.should_receive(:fetch).and_return(fetchedResults)
        @interpreter.should_receive(:interpret).with(fetchedResults).and_return(interpretedResults)
        
        perform
        
        @temperature.should == 4                
      end
      
    end
  end
end