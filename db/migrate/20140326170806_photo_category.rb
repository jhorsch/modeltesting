class PhotoCategory < ActiveRecord::Migration
  def change
    create_table :photo_categories do |t|
      t.integer :photo_id
      t.integer :category_id

      t.timestamps
    end
  end
end
