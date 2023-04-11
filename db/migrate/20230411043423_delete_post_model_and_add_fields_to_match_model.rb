class DeletePostModelAndAddFieldsToMatchModel < ActiveRecord::Migration[7.0]
  def change
    drop_table :posts, if_exists: true
    add_reference :matches, :user, null: false, foreign_key: true
    add_column :matches, :num_of_team_goals, :integer
    add_column :matches, :num_of_opponent_goals, :integer
    add_column :matches, :team_goal_scorers, :string
    add_column :matches, :opponent_goal_scorers, :string

    rename_column :matches, :competitor_name, :opponent_name
  end
end
