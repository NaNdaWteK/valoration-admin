require 'spec_helper_tdd'
require_relative '../../services/components/service'

describe 'Components service' do

  it 'stores any number of components' do
    request_data = simulated_request
    RELATED_ID = 1

    response = Components::Service.add(request_data)

    expect(response[:element_id]).to be RELATED_ID

  end

  def simulated_request
    request = { 'components' => ['Salsa brava', 'Patatas fritas'], 'element_id' => 1 }
    return request
  end

end
