require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  get '/checkout' do
    erb :checkout
  end

  post '/checkout' do
    @session["item"] = params["item"]
    erb :checkout
    # binding.pry
  end
end
