require 'spec_helper_tdd'
require_relative '../../services/groups/service'

describe 'Groups service' do

  it 'add a new group' do
    group_name = 'Dishes'

    response = Groups::Service.add(group_name)

    expect(response['group']).to eq group_name
  end

  it 'retrieve list' do
    Groups::Service.add('Dishes')

    response = Groups::Service.list

    expect(response.any?).to be true
  end

end
