class Post < ApplicationRecord
  belongs_to :user
  belongs_to :match, optional: true
  has_rich_text :content
  has_one_attached :banner
end
