require 'sinatra/base'
require 'json'
require_relative './service'

class App < Sinatra::Base

  post '/add-group/save' do
    result = Groups::Service.add(request['component'])

    result.to_json
  end

end
