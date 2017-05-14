require 'spec_helper_tdd'
require_relative '../../services/elements/service'

describe 'Elements service' do

  it 'add new element' do
    ELEMENT_NAME = 'Paella Valenciana'

    response = Elements::Service.add(ELEMENT_NAME)

    expect(response['element']).to eq ELEMENT_NAME

  end

  it 'retrieve list' do
    Elements::Service.add('Fresas con nata')

    response = Elements::Service.list

    expect(response.any?).to be true

  end

end
