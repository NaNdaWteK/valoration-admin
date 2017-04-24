require 'sinatra/base'
require 'json'
require_relative 'services/groups/routes'
require_relative 'services/elements/routes'
require_relative 'services/components/routes'

class App < Sinatra::Base
  set :public_folder, './public/'

  get '/' do
    File.read(File.join('public', 'group.html'))
  end

  get '/add-group' do
    File.read(File.join('public', 'group.html'))
  end

  get '/add-element' do
    File.read(File.join('public', 'elements.html'))
  end

  get '/add-components' do
    File.read(File.join('public', 'components.html'))
  end

end
