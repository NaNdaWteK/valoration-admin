require 'sinatra/base'
require 'json'
require_relative 'services/groups/service'
require_relative 'services/elements/service'

class App < Sinatra::Base
  set :public_folder, './public/'

  get '/' do
    File.read(File.join('public', 'group.html'))
  end

  get '/create-group' do
    File.read(File.join('public', 'group.html'))
  end

  get '/create-element' do
    File.read(File.join('public', 'elements.html'))
  end

  get '/add-components' do
    File.read(File.join('public', 'components.html'))
  end

  post '/create-group/add' do
    result = Groups::Service.add(request['group'])
    result.to_json
  end

  post '/create-element/add' do
    result = Elements::Service.add(request['element'])
    result.to_json
  end

  post '/save-components/add' do
    result = Components::Service.add(request)
    response = { 'success' => result }
    response.to_json
  end

end
