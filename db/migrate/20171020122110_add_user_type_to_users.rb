class AddUserTypeToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :user_type, :interger, :default => 0, :null => false
  end
end
