class Match < ApplicationRecord
  has_one_attached :opponent_logo
  has_rich_text :content
  has_one_attached :banner
end
