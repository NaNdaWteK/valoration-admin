require 'spec_helper_bdd'
require_relative 'test_support/elements/element'
require_relative 'test_support/elements/fixture'

feature "Elements" do
  scenario 'added generate a message' do

    current = Elements::Fixture.add_element

    expect(current.check_element?(Elements::Fixture::ELEMENT_NAME)).to be(true)
    expect(current.element_added_message?).to be(true)
  end

  scenario 'show list' do

    current = Elements::Fixture.add_elements

    expect(current.check_element?(Elements::Fixture::ELEMENT_NAME)).to be(true)
    expect(current.check_element?(Elements::Fixture::OTHER_ELEMENT)).to be(true)

  end
end
