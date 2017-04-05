require 'sinatra/base'
require 'json'

class App < Sinatra::Base
  set :public_folder, './public/'

  get '/' do
    File.read(File.join('public', 'group.html'))
  end

  get '/create-group' do
    File.read(File.join('public', 'group.html'))
  end

  post '/create-group/add' do
    result = ['OK']
    result.to_json
  end

end
