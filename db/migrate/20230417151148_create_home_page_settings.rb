class CreateHomePageSettings < ActiveRecord::Migration[7.0]
  def change
    create_table :home_page_settings do |t|
      t.string :hero_title
      t.string :hero_description

      t.timestamps
    end
  end
end
