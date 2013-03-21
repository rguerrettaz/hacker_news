get '/' do
  @posts = Post.includes(:comments, :votes).all
  erb :index
end

