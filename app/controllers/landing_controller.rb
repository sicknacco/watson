class LandingController < ApplicationController
  def index
    @paintings = Painting.all
  end
end