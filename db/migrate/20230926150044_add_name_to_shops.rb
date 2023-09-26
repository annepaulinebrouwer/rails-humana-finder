class AddNameToShops < ActiveRecord::Migration[7.0]
  def up
    change_table :shops do |t|
      t.string :name
    end
  end

  def down
    remove_column :shops, :name
  end
end
