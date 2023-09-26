class AddFirstnameLastnameToUsers < ActiveRecord::Migration[7.0]
  def change
    change_table :users do |t|
      t.string :firstname
      t.string :lastname
    end
  end
end
