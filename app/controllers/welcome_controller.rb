class WelcomeController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def up_vote

  end

  def down_vote

  end
end
