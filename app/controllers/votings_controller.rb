class VotingsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def upvote
    remove_votes
    current_user.vote_exclusively_for(Restaurant.find(voting_params[:restaurant_id]))
    redirect_to votings_index_path
  end

  private

  def remove_votes
    Vote.where(
      :voter_id => current_user.id
    ).map(&:destroy)
  end

  def voting_params
    params.permit(:restaurant_id)
  end

end
