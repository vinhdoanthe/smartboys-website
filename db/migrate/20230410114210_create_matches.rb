class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.boolean :is_home
      t.string :competitor_name
      t.datetime :start_at
      t.string :stadium_name
      t.string :stadium_location
      t.string :outfit_color

      t.timestamps
    end
  end
end
