
require 'spec_helper_bdd'
require_relative 'test_support/group'
require_relative '../../app'

feature "Add groups" do
  let(:page) do
    Page::Group.new
  end
  scenario 'Add one group of elements generate a message' do
    group = 'Dishes'

    page.fill_group(group)
    page.submit_form()

    expect( page.check_group?(group) ).to be(true)
    expect(page.group_added_message?).to be(true)
  end
end
