
require 'spec_helper_bdd'
require_relative 'test_support/element'
require_relative '../../app'

feature "Add elements" do
  let(:page) do
    Page::Element.new
  end
  scenario 'Add one element to track generate a message' do
  end
end
