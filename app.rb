require 'rubygems'
require 'bundler'
Bundler.setup

require 'sinatra'

class App < Sinatra::Base
  configure do
    set :public_folder, Proc.new { File.join(root, "static") }
    enable :sessions
  end

  get '/' do
    erb :index
  end
end
