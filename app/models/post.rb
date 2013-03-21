class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :body, :presence => true

  belongs_to :user
  has_many :comments
  has_many :votes, :class_name => :PostVote

  def vote(user)
  	self.votes << PostVote.create(:user => user)
  end

  def voted?(user)
  	PostVote.where("post_id = ? AND user_id = ?", self.id, user.id).count > 0
  end
end
