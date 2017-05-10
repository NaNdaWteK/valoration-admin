require 'spec_helper_tdd'
require_relative '../../services/groups/service'

describe 'Groups service' do

  it 'add a new group' do
    GROUP_NAME = 'Dishes'

    response = Groups::Service.add(GROUP_NAME)

    expect(response['group']).to eq GROUP_NAME

  end

end
