class MatchResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :is_home, as: :boolean
  field :opponent_name, as: :text
  field :start_at, as: :date_time
  field :stadium_name, as: :text
  field :stadium_location, as: :text
  field :outfit_color, as: :text
  field :user_id, as: :number
  field :num_of_team_goals, as: :number
  field :num_of_opponent_goals, as: :number
  field :team_goal_scorers, as: :text
  field :opponent_goal_scorers, as: :text
  field :opponent_logo, as: :file
  field :banner, as: :file
  field :content, as: :trix
  # add fields here
end
