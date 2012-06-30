require 'sinatra/base'
require 'sinatra/config_file'

class App < Sinatra::Base
  register Sinatra::ConfigFile
  config_file File.join(settings.root,'settings.yml')

  configure do
    set :public_folder, Proc.new { File.join(root, "static") }
    enable :sessions
  end
end

