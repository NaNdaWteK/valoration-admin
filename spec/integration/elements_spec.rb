require 'rack/test'
require 'json'
require_relative './../../services/elements/routes'

describe 'Element' do

  include Rack::Test::Methods

  def app
    App.new
  end

  it 'added generate a message' do
    element = 'Paella Valenciana'
    request = {
      'element' => element
    }

    post '/elements/save', request
    response = JSON.parse(last_response.body)

    expect( response['element'] ).to eq(element)
  end

  it 'retrieve list' do
    element = 'Fresas con nata'
    request = {
      'element' => element
    }
    get '/elements/empty'
    post '/elements/save', request
    post '/elements/list/1'
    response = JSON.parse(last_response.body)

    expect( response[0]['element'] ).to eq(element)
  end

end
