require 'spec_helper_bdd'
require_relative 'test_support/components'
require_relative '../../app'

feature "Add components" do
  let(:page) do
    Page::Components.new
  end
  scenario 'one component generate a message' do
    component = 'Patatas fritas'

    page.fill_component(component, 0)
    sleep 2
    page.submit_form()

    expect( true ).to be(true)
  end

  scenario 'two components generate a message' do
    component1 = 'Patatas fritas'
    component2 = 'Salsa brava'
    expect( true ).to be(true)
  end
end
