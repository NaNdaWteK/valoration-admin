require 'sinatra/base'
require 'json'
require_relative './service'

class App < Sinatra::Base

  post '/add-group/save' do
    response.headers['Access-Control-Allow-Origin'] = '*'
    result = Groups::Service.add(request['group'])

    result.to_json
  end

  post '/groups/list/:company_id' do
    response.headers['Access-Control-Allow-Origin'] = '*'
    groups = Groups::Service.list

    return groups.to_json
  end

  get '/groups/empty' do
    Groups::Service.empty
  end

end
