get '/posts' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  # erb :index
	@post_array = Post.all
  erb :posts
end

post '/create_post' do
	post_name = params[:post_name]
	content = params[:content]
	author = params[:author]
	tag_name = params[:tags]
	new_post(post_name, content, author, tag_name)
	redirect to('/posts')
	# erb :posts
end

get '/' do

	erb :index
end

def new_post(name_p, content, author, name_t)
	post = Post.new(post_name: name_p, content: content, author: author)
	
	if post.save
			tag = Tag.create(tag_name: name_t)
	    post.tags << tag
	    post.save!
	else
		session[:errors]=nil
		session[:errors]
	end
end