class AddMatchReferenceToPost < ActiveRecord::Migration[7.0]
  def change
    # add_reference :posts, :match, null: true, foreign_key: true
  end
end
