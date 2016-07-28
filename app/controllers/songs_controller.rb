get '/songs/new' do
  erb :'songs/new'
end

post '/songs' do
  @song = Song.new(params[:song])
  if @song.save
    redirect '/songs'
  else
    erb :'songs/new'
  end
end

get '/songs/:id' do
  @song = Song.find(params[:id])
  erb :'songs/show'
end

get '/songs/:id/edit' do
  @song = Song.find(params[:id])
  erb :'songs/edit'
end

put '/songs/:id' do
  @song = Song.find(params[:id])
  @song.assign_attributes(params[:song])
  if @song.save
    redirect '/songs'
  else
    erb :'songs/edit'
  end
end

delete '/songs/:id' do
  @song = Song.find(params[:id])
  @song.destroy
  redirect '/songs'
end
