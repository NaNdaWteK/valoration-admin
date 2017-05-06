require 'spec_helper_bdd'
require_relative 'test_support/groups/group'
require_relative 'test_support/groups/fixture'

feature "Group" do
  scenario 'added generate a message' do

    current = Groups::Fixture.add_group

    expect(current.check_group?(Groups::Fixture::GROUP_NAME)).to be(true)
    expect(current.group_added_message?).to be(true)
  end
end
