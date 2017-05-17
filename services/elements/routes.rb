require 'sinatra/base'
require 'json'
require_relative './service'

class App < Sinatra::Base

  post '/elements/save' do
    response.headers['Access-Control-Allow-Origin'] = '*'
    result = Elements::Service.add(request['element'])

    return result.to_json
  end

  post '/elements/list' do
    elements = Elements::Service.list

    return elements.to_json
  end

  get '/elements/empty' do
    Elements::Service.empty
  end

end
