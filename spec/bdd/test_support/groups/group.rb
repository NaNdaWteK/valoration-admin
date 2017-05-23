module Page
  class Group
    include Capybara::DSL

    def initialize
      url = '/add-group'
      visit(url)
      validate!
    end

    def fill(content)
      fill_in('group', with: content)
    end

    def submit
      find('#submit').click
    end

    def added?
      has_css?('.group-message--added')
    end

    def check?(group)
      has_content?(group, wait: 1)
    end

    private

    def validate!
      page.assert_selector('#group-form')
      page.assert_selector('#group')
      page.assert_selector('#submit')
    end
  end
end
