require "sinatra/base"
require 'sinatra/cross_origin'

class TestAPI < Sinatra::Base
  configure do
    enable :cross_origin
  end

  before do
    response.headers['Access-Control-Allow-Origin'] = '*'
  end

  get '/' do
    puts "hello world"
  end

  get '/api' do
    res = {message: "From the backend"}.to_json
  end

  post '/api/post' do
    @json = JSON.parse(request.body.read)
    puts @json
  end


 options "*" do
    response.headers["Allow"] = "GET, PUT, POST, DELETE, OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
    response.headers["Access-Control-Allow-Origin"] = "*"
    200
  end

end
