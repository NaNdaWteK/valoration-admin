require 'sinatra/base'
require 'json'
require_relative './service'

class App < Sinatra::Base

  post '/add-element/save' do
    result = Elements::Service.add(request['component'])

    result.to_json
  end

  get '/elements/empty' do
    Elements::Service.empty
  end

end
