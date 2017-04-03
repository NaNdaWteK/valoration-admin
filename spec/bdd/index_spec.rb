
require 'spec_helper_bdd'
require_relative 'test_support/index'
require_relative '../../app'

feature "Index" do
  let(:page) do
    Page::Index.new
  end

  scenario 'Log with authorized credentials' do
    expect(page).to have_css('#index')
  end

end
