require 'sinatra/base'
require 'json'
require_relative 'services/groups/service'

class App < Sinatra::Base
  set :public_folder, './public/'

  get '/' do
    File.read(File.join('public', 'group.html'))
  end

  get '/create-group' do
    File.read(File.join('public', 'group.html'))
  end

  post '/create-group/add' do
    group = JSON.parse(request.body.read)
    result = Groups::Service.add(group[0])
    result.to_json
  end

end
