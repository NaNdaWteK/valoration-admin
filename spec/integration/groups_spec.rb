require 'rack/test'
require 'json'
require_relative './../../services/groups/routes'

describe 'Group' do

  include Rack::Test::Methods

  def app
    App.new
  end

  it 'added generate a message' do
    GROUP_NAME = 'Dishes'
    request = {
      'group' => GROUP_NAME
    }

    post '/add-group/save', request
    response = JSON.parse(last_response.body)

    expect( response['group'] ).to eq(GROUP_NAME)
  end
end
