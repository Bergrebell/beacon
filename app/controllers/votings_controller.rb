class VotingsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
end
