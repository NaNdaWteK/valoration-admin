require 'spec_helper_bdd'
require_relative 'test_support/components'
require_relative '../../app'

feature "Components" do
  let(:page) do
    Page::Components.new
  end
  ELEMENT_ID = '4032840243'
  ONE_COMPONENT = 'Patatas fritas'
  ANOTHER_COMPONENT = 'Salsa brava'

  scenario 'added generate a message' do

    page.add_more_components
    page.fill_component(ONE_COMPONENT, 0)
    page.fill_component(ANOTHER_COMPONENT, 1)
    page.submit_form()

   expect(page.related_id).to eq(ELEMENT_ID)
   expect(page.check_message?(ONE_COMPONENT)).to be(true)
   expect(page.check_message?(ANOTHER_COMPONENT)).to be(true)
  end
end
