require_relative 'element'

class Fixture

  extend Capybara::DSL

  ELEMENT_NAME = 'Paella Valenciana'

  def self.empty
    visit('/elements/empty')
    Page::Element.new
  end

  def self.add_element
    page = Fixture.empty
    page.fill_element(ELEMENT_NAME)
    page.submit_form()
    page
  end

end
