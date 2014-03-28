class Two < ActiveRecord::Migration
  def change
    add_column :photos, :last_name, :string
  end
end
