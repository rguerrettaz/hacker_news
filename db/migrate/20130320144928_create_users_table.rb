class CreateUsersTable < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :name, :null => false
  		t.string :email, :unique => true, :null => false
  		t.string :password_hash, :null => false
  		t.string :token
  		t.timestamps
  	end
  end
end
