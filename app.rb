require 'sinatra'
require 'sinatra/base'
require 'erb'


configure do
  set :views, File.join(File.dirname(__FILE__), 'views')
  set :erb, :layout => :'layout.html'
end


get '/' do
  erb :'index.html'
end

post '/shop' do
   redirect to("/shops/#{ params[:city] }/#{ params[:category ]}"), 303
end

get '/shops/Agra/Clothing' do
  erb :'agra-clothing.html'
end
