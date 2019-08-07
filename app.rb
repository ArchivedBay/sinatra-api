require "sinatra/base"

class TestAPI < Sinatra::Base
  get '/' do
    puts "hello world"
  end
end
