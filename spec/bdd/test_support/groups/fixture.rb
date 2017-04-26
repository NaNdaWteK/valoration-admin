require_relative 'group'

module Groups
  class Fixture

    extend Capybara::DSL

    GROUP_NAME = 'Dishes'

    def self.empty
      visit('/groups/empty')
      Page::Group.new
    end

    def self.add_group
      page = self.empty
      page.fill_group(GROUP_NAME)
      page.submit_form
      page
    end
  end
end
