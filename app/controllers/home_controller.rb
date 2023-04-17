class HomeController < ApplicationController
  def index
    upcoming_matches = MatchesQuery.new.upcoming
    past_matches = MatchesQuery.new.past
    sponsors = SponsorsQuery.new.active
    respond_to do |format|
      format.html { render locals: { upcoming_matches: upcoming_matches, past_matches: past_matches, sponsors: sponsors } }
      format.json { render json: { upcoming_matches: upcoming_matches, past_matches: past_matches } }
    end
  end
end
