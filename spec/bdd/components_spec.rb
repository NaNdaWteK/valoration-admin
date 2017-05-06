require 'spec_helper_bdd'
require_relative 'test_support/components'
require_relative '../../app'

feature "Add components" do
  let(:page) do
    Page::Components.new
  end
  ONE_COMPONENT = 'Patatas fritas'
  ANOTHER_COMPONENT = 'Salsa brava'
  scenario 'one component generate a message' do

    page.fill_component(ONE_COMPONENT, 0)
    page.submit_form()

    expect(page.check_message?(ONE_COMPONENT)).to be(true)
  end

  scenario 'two components generate a message' do

    page.add_more_components
    page.fill_component(ONE_COMPONENT, 0)
    page.fill_component(ANOTHER_COMPONENT, 1)
    page.submit_form()

   expect(page.check_message?(ONE_COMPONENT)).to be(true)
   expect(page.check_message?(ANOTHER_COMPONENT)).to be(true)
  end
end
