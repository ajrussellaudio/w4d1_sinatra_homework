require "sinatra"
require "sinatra/contrib/all"
require "json"
require_relative "./models/word_formatter"

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
  postcode = WordFormatter.new(info[:postcode])
  formatted_postcode = postcode.my_upcase
  info[:postcode] = formatted_postcode
  return info.to_json()
end

get "/camelcase_json/:word1/:word2" do
  content_type( :json )
  input = "#{params[:word1]} #{params[:word2]}"
  words = WordFormatter.new(input)
  output = {
    input: input,
    output: words.camelcase
  }
  return output.to_json()
end

get "/camelcase_html/:word1/:word2" do
  input = "#{params[:word1]} #{params[:word2]}"
  @output = WordFormatter.new(input).camelcase
  erb(:camelcase)
end