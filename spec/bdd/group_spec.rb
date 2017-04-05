
require 'spec_helper_bdd'
require_relative 'test_support/group'
require_relative '../../app'

feature "Index" do
  let(:page) do
    Page::Group.new
  end
end
