require_relative 'element'

module Elements
  class Fixture

    extend Capybara::DSL

    ELEMENT_NAME = 'Paella Valenciana'
    OTHER_ELEMENT = 'Melón con jamón'

    def self.empty
      visit('/elements/empty')
      Page::Element.new
    end

    def self.add_element
      page = self.empty
      page.fill_element(ELEMENT_NAME)
      page.submit_form
      page
    end

    def self.add_elements
      page = self.add_element
      page.fill_element(OTHER_ELEMENT)
      page.submit_form
      page
    end


  end
end
