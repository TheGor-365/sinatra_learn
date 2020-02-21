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
  
  erb :index
end
