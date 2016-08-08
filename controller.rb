require "sinatra"
require "sinatra/contrib/all"
require "json"

get "/" do
  erb(:my_info)
end

get "/address" do
  content_type( :json )
  info = {
    address: '3 ARGYLE HOUSE', 
    building: 'CODEBASE', 
    postcode: 'e13 zqf', 
    phone: '0131558030'
  }
  return info.to_json()
end