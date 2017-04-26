require 'rack/test'
require 'json'
require_relative './../../services/elements/routes'

describe 'Element' do

  include Rack::Test::Methods

  def app
    App.new
  end

  it 'added generate a message' do
    ELEMENT_NAME = 'Paella Valenciana'
    request = {
      'component' => ELEMENT_NAME
    }

    post '/add-element/save', request
    response = JSON.parse(last_response.body)

    expect( response['element'] ).to eq(ELEMENT_NAME)
  end
end
