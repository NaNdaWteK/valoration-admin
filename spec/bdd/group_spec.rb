require 'spec_helper_bdd'
require_relative 'test_support/groups/group'
require_relative 'test_support/groups/fixture'

feature "Group" do
  scenario 'added generate a message' do

    group = Groups::Fixture.add_group

    expect(group.check?(Groups::Fixture::GROUP_NAME)).to be(true)
    expect(group.added?).to be(true)
  end

  scenario 'added to groups' do

    group = Groups::Fixture.add_groups

    expect(group.check?(Groups::Fixture::OTHER_GROUP)).to eq(true)
  end
end
