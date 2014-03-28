class Category < ActiveRecord::Base
  has_many :photo_categories
  has_many :photos, through: :photo_categories

  belongs_to :main_category
end
