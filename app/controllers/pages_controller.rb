class PagesController < ApplicationController
  def home
    forecaster = Forecasters::Forecaster.new
    @temperature = forecaster.tonightsTemperature
  end

end
