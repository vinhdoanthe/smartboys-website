class UpdateMatchModel < ActiveRecord::Migration[7.0]
  def change
    remove_reference :matches, :user, index: true, foreign_key: true

    add_column :matches, :created_by, :integer
    add_foreign_key :matches, :users, column: :created_by
  end
end
