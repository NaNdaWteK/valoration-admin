module Page
  class Components
    include Capybara::DSL

    def initialize
      url = '/add-components'
      visit(url)
      validate!
    end

    def fill_component(content, index)
      all("input")[index].set(content)
    end

    def submit_form
      find('#submit').click
    end

    def component_added_message?
      has_css?('.component-message--added')
    end

    def check_message?(word)
      has_content?(word)
    end

    private

    def validate!
      page.assert_selector('#componentForm')
      page.assert_selector('#message', visible: false)
      page.assert_selector('#components')
      page.assert_selector("input[type='text']")
      page.assert_selector('.icon-plus')
      page.assert_selector('#submit')
    end
  end
end
