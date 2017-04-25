require 'spec_helper_bdd'
require_relative 'test_support/elements/element'
require_relative 'test_support/elements/fixture'

feature "New elements" do
  scenario 'added generate a message' do

    current = Fixture.add_element

    expect(current.check_element?(Fixture::ELEMENT_NAME)).to be(true)
    expect(current.element_added_message?).to be(true)
  end
end
