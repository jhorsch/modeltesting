class One < ActiveRecord::Migration
  def change
    add_column :photos, :first_name, :string
  end
end
