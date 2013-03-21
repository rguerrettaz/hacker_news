class Comment < ActiveRecord::Base
	validates :body, :presence => true

	belongs_to :user
	belongs_to :post
	has_many :votes, :class_name => :CommentVote

  def vote(user)
  	self.votes << CommentVote.create(:user => user)
  end

   def voted?(user)
  	CommentVote.where("comment_id = ? AND user_id = ?", self.id, user.id).count > 0
  end
end
