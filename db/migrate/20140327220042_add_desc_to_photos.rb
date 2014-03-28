class AddDescToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :desc, :text
  end
end
