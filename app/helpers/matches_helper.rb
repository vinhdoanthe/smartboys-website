module MatchesHelper

  def display_match_time(match)
    match_time = match.start_at
    if match_time
      match_time.strftime("%d/%m/%Y %I:%M %p")
    else
      "TBD"
    end
  end
end
