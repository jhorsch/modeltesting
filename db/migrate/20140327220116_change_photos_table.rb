class ChangePhotosTable < ActiveRecord::Migration
  def change
    change_table :photos do |t|
    t.remove :desc
    t.string :price
    t.rename :title, :my_title
  end
  end
end
