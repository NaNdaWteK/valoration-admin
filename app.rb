require 'sinatra/base'

class App < Sinatra::Base
  set :public_folder, './public/'

  get '/' do
    File.read(File.join('public', 'group.html'))
  end

  get '/create-group' do
    File.read(File.join('public', 'group.html'))
  end
end
