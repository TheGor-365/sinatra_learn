require 'sinatra'

get '/' do
  erb :index
end

get '/contacts' do
  erb :contacts
end

post '/' do
  @login = params[:login]
  @password = params[:password]

  if @login == 'admin' && @password == 'secret'
    erb :welcome
  else
    erb :index
  end
end
