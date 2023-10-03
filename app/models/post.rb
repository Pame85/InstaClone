class Post < ApplicationRecord
    has_one_attached :image
    validates :caption, presence: true
    validates :image_url, presence: true
  end
  