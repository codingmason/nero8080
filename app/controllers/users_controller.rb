get '/register' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user]) #
  if @user.save
    redirect '/login'
  else
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end


get '/login' do
  if request.xhr?
    erb :'users/login', layout: false
  else
    erb :'users/login'
  end
end

post '/login' do
  user = User.find_by(username: params[:username])
  if user && user.authenticate(params[:password])
    session[:id] = user.id
    redirect '/'
  else
    @errors = "Invalid username or password"
    erb :'users/login'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end
