require 'sinatra/base'
require 'json'
require_relative './service'

class App < Sinatra::Base

  post '/add-element/save' do
    result = Elements::Service.add(request['element'])
    
    result.to_json
  end

end
