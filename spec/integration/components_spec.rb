require 'rack/test'
require 'json'
require_relative './../../services/components/routes'

describe 'Components' do

  include Rack::Test::Methods
  def app
    App.new
  end

  it 'added correctly' do
    RELATED_ID = '1'
    SECOND_COMPONENT = 'Patatas fritas'
    request = simulated_request

    post '/add-components/save', request
    response = JSON.parse(last_response.body)

    expect(response[0]['element_id']).to eq RELATED_ID
    expect(response[1]['element_id']).to eq RELATED_ID
    expect(response[1]['component']).to eq SECOND_COMPONENT
  end

  def simulated_request
    request = { 'components' => ['Salsa brava', 'Patatas fritas'], 'element_id' => 1 }
    return request
  end
end
