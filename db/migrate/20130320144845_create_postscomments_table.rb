class CreatePostscommentsTable < ActiveRecord::Migration
  def change
  	create_table :comments do |t|
  		t.text :body, :null => false
  		t.references :post, :user
  		t.timestamps
  	end
  end
end
