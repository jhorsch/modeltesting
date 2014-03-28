# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'

Photo.destroy_all
Category.destroy_all
PhotoCategory.destroy_all
MainCategory.destroy_all


DatabaseCleaner.clean_with(:truncation, :only => %w[categories])
DatabaseCleaner.clean_with(:truncation, :only => %w[photos])
DatabaseCleaner.clean_with(:truncation, :only => %w[main_categories])
DatabaseCleaner.clean_with(:truncation, :only => %w[photo_categories])

CSV.foreach("#{Rails.root}/lib/assets/Photo.csv", headers: true) do |row|
     Photo.create(

        :title => row[1]

      )
end

CSV.foreach("#{Rails.root}/lib/assets/Category.csv", headers: true) do |row|
     Category.create(
        :title => row[0],
        :main_category_id => row[8]
      )

end



CSV.foreach("#{Rails.root}/lib/assets/PhotoCategory.csv", headers: true) do |row|
     PhotoCategory.create(
        :photo_id => row[0],
        :category_id => row[1]

      )
end


CSV.foreach("#{Rails.root}/lib/assets/MainCategory.csv", headers: true) do |row|
     MainCategory.create(
        :title => row[0]

      )
end

