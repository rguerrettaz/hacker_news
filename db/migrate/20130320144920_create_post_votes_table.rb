class CreatePostVotesTable < ActiveRecord::Migration
  def change
  	create_table :post_votes do |t|
  		t.references :post, :user
  		t.timestamps
  	end
  end
end
