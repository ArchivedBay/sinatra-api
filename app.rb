require "sinatra/base"

class TestAPI < Sinatra::Base
  get '/' do
    puts "hello world"
  end

  post '/api/post' do
    @json = JSON.parse(request.body.read)
    puts @json
  end
end
