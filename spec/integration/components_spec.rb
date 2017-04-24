require 'rack/test'
require 'json'
require_relative './../../services/components/routes'

describe 'Components service' do

  include Rack::Test::Methods

  def app
    App.new
  end

end
