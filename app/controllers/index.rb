get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get '/cool_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  erb :get_cool_url
end

post '/cool_url' do
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  @first_name = params["firstname"]
  @last_name = params["lastname"]
  erb :post_cool_url
  # redirect '/cool_url'
end
