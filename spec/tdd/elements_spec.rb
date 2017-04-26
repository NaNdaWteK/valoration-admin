require 'spec_helper_tdd'
require_relative '../../services/elements/service'

describe 'Elements service' do

  it 'add a new element' do
    ELEMENT_NAME = 'Paella Valenciana'

    response = Elements::Service.add(ELEMENT_NAME)

    expect(response[:element]).to be ELEMENT_NAME

  end

end
