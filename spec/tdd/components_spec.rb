require 'spec_helper_tdd'
require 'digest/md5'
require_relative '../../services/components/service'

describe Components::Service do

  it 'stores any number of components' do
    request_data = simulated_request

    success = Components::Service.add(request_data)

    expect(success).to be true

  end
  def simulated_request
    request = { 'components' => ['Salsa brava', 'Patatas fritas'], 'element_id' => 1 }
    request
  end
end
