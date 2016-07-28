get '/tags/new' do
  erb :'tags/new'
end

post '/tags' do
  @tag = Tag.new(params[:tag])
  if @tag.save
    redirect '/tags'
  else
    erb :'tags/new'
  end
end
