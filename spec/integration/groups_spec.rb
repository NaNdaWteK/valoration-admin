require 'rack/test'
require 'json'
require_relative './../../services/groups/routes'

describe 'Group' do

  include Rack::Test::Methods

  def app
    App.new
  end

  it 'added generate a message' do
    group_name = 'Dishes'
    request = {
      'group' => group_name
    }

    post '/add-group/save', request
    response = JSON.parse(last_response.body)

    expect( response['group'] ).to eq(group_name)
  end

  it 'retrieve list' do
    group_name = 'Dishes'
    request = {
      'group' => group_name
    }
    get '/groups/empty'
    post '/add-group/save', request
    post '/groups/list/1'
    response = JSON.parse(last_response.body)

    expect( response[0]['group'] ).to eq(group_name)
  end
end
