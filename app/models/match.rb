class Match < ApplicationRecord
  has_one_attached :opponent_logo
  has_rich_text :content
  has_one_attached :banner

  belongs_to :created_by, foreign_key: "created_by", class_name: "User"
end
