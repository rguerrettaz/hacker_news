get '/comments' do
end

post '/comments' do

	redirect '/posts/' + post.id
end