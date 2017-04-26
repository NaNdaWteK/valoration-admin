require 'sinatra/base'
require 'json'
require_relative './service'

class App < Sinatra::Base

  post '/add-components/save' do
    result = Components::Service.add(request)

    result.to_json
  end

end
