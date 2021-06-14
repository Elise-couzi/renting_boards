class AddFirstNametoUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :firstname, :text
    add_column :users, :lastname, :text
    add_column :users, :address, :text
    add_column :users, :username, :text
    end
end
