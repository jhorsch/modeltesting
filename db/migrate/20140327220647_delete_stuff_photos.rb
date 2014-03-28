class DeleteStuffPhotos < ActiveRecord::Migration
  def change
    change_table :photos do |t|
      t.remove :price
      t.remove :my_title
      t.string :author
    end
  end
end
