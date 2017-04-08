
module Page
  class Group
    include Capybara::DSL

    def initialize
      url = '/'
      visit(url)
      validate!
    end

    def fill_group(content)
      fill_in('group', with: content)
    end

    def submit_form
      find('#submit').click
    end

    def group_added_message?
      has_css?('.group-message--added')
    end

    def check_group?(group)
      has_content?(group)
    end

    private

    def validate!
      page.assert_selector('#group')
      page.assert_selector('#submit')
    end
  end
end
