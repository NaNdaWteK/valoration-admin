module Page
  class Element
    include Capybara::DSL

    def initialize
      url = '/'
      visit(url)
      validate!
    end

    def fill_element(content)
      fill_in('element', with: content)
    end

    def submit_form
      find('#submit').click
    end

    def element_added_message?
      has_css?('.element-message--added')
    end

    def check_element?(element)
      has_content?(element)
    end

    private

    def validate!
      page.assert_selector('#element-form')
      page.assert_selector('#element')
      page.assert_selector('#submit')
    end
  end
end
