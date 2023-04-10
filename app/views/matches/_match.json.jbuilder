json.extract! match, :id, :is_home, :competitor_name, :competitor_logo, :start_at, :stadium_name, :stadium_location, :outfit_color, :created_at, :updated_at
json.url match_url(match, format: :json)
json.competitor_logo url_for(match.competitor_logo)
