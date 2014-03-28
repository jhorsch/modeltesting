class Photo < ActiveRecord::Base
  has_many :photo_categories
  has_many :categories, through: :photo_categories
end
