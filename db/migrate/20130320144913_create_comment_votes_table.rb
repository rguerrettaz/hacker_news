class CreateCommentVotesTable < ActiveRecord::Migration
  def change
  	create_table :comment_votes do |t|
  		t.references :comment, :user
  		t.timestamps
  	end
  end
end
