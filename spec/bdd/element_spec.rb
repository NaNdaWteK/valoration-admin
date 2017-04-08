
require 'spec_helper_bdd'
require_relative 'test_support/element'
require_relative '../../app'

feature "Add elements" do
  let(:page) do
    Page::Element.new
  end
  scenario 'Add one element to track generate a message' do
    element = 'Paella Valenciana'

    page.fill_element(element)
    page.submit_form()

    expect( page.check_element?(element) ).to be(true)
    expect(page.element_added_message?).to be(true)
  end
end
