require "sinatra"
require "sinatra/contrib/all"

get "/" do
  erb(:my_info)
end