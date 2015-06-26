get '/tags' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  # erb :index
  @tag_array = Tag.all
  erb :tags
end

get '/' do

	erb :index
end